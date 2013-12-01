class HomeController < ApplicationController

  def index # 
    @products   = Product.order("id DESC").limit(9).page(params[:page]).per(3)
  end # Load the app/views/home/index

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end # Load the app/views/home/show

  def search
    # No Code Required
  end

  def search_results
    # Trying to implement category search
    @category = Category.where("title LIKE ?", "%#{params[:keywords]}%")

    if ( @category.first.nil? )
      @products = Product.where("name LIKE ? OR description LIKE ?", 
                              "%#{params[:keywords]}%", "%#{params[:keywords]}%").page(params[:page])
    else
      @products = Product.where("name LIKE ? OR description LIKE ? OR category_id LIKE ?", 
                                "%#{params[:keywords]}%", "%#{params[:keywords]}%", "%#{@category.first.id}%").page(params[:page])
    end
  end

  def page # Find a specific page based on the id sent
    @page = Page.find(params[:id])
  end

  def sale # Find products that are on sale
    @products = Product.where("sale_price IS NOT NULL").page(params[:page])
  end

  def new #Find the last 5 products added
    @products = Product.order("id DESC").limit(9).page(params[:page])
  end

  def cart
    @provinces = Province.all #Get all the provinces in the database
  end

  def checkout
    session[:checkout] = nil
    session[:checkout] = []

    @province   = Province.where(:id => params[:province])
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email      = params[:email]
    @address    = params[:address]
    @city       = params[:city]
    @postal     = params[:postal]
    
    session[:checkout] << params[:province]
    session[:checkout] << @first_name
    session[:checkout] << @last_name
    session[:checkout] << @email
    session[:checkout] << @address
    session[:checkout] << @city
    session[:checkout] << @postal
  end

  def create
    # Grab the data passed through the session
    province   = Province.where(:id => session[:checkout][0])
    first_name = session[:checkout][1]
    last_name  = session[:checkout][2]
    email      = session[:checkout][3]
    address    = session[:checkout][4]
    city       = session[:checkout][5]
    postal     = session[:checkout][6]

    total_price = 0

    # Place holder quantity
    quantity = 1

    # Create a new customer
    new_customer = Customer.new(:first_name  => first_name,
                                :last_name   => last_name,
                                :city        => city,
                                :postal_code => postal,
                                :address     => address,
                                :email       => email)

    new_customer.province = province.first
    new_customer.save

    # Create an order
    processing = Status.where(:title => 'Processing').first

    new_order = Order.new
    new_order.customer = new_customer
    new_order.gst_rate = new_customer.province.gst unless new_customer.province.gst.nil?
    new_order.pst_rate = new_customer.province.pst unless new_customer.province.pst.nil?
    new_order.hst_rate = new_customer.province.hst unless new_customer.province.hst.nil?

    # Create line items for each of the
    @cart_products.each do |product|
      new_line_item = LineItem.new(:quantity => quantity,
                                   :price    => product.price)

      total_price += product.price

      new_line_item.product = product
      new_line_item.save
    end

    total_price += total_price * new_customer.province.gst unless new_customer.province.gst.nil?
    total_price += total_price * new_customer.province.pst unless new_customer.province.pst.nil?
    total_price += total_price * new_customer.province.hst unless new_customer.province.hst.nil?

    new_order.status = processing
    new_order.order_total = total_price
    new_order.save

    # Clear the sessions
    session[:checkout] = nil
    session[:cart] = nil

    # Set the flash message
    flash[:success_message] = "Your order has been placed!"

    # Send the user back to the root
    redirect_to root_path
  end

  def empty_cart
    session[:cart] = nil
    flash[:error_message] = "Your cart has been emptied.."
    redirect_to cart_path
  end

  def edit_cart
    flash[:error_message] = "Please enter your customer details..."
    session[:checkout] = nil
    redirect_to cart_path
  end

  def add_product
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    flash[:success_message] = "The product has been added to your cart!"
    redirect_to root_path
  end

  def remove_product
    id = params[:id].to_i
    session[:cart].delete(id)
    flash[:error_message] = "The product has been removed from your cart!"
    redirect_to cart_path
  end
end
