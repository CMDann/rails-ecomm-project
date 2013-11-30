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
    @province   = Province.where("id LIKE?", "%#{params[:province]}%")
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email      = params[:email]
  end

  def empty_cart
    session[:cart] = nil
    flash[:error_message] = "Your cart has been emptied.."
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
