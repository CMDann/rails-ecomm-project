class HomeController < ApplicationController
  before_filter :initialize_session
  
  def index # 
    @products   = Product.order("id DESC").page(params[:page]).per(3)
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
                              "%#{params[:keywords]}%", "%#{params[:keywords]}%").page(params[:page]).per(3)
    else
      @products = Product.where("name LIKE ? OR description LIKE ? OR category_id LIKE ?", 
                                "%#{params[:keywords]}%", "%#{params[:keywords]}%", "%#{@category.first.id}%").page(params[:page]).per(3)
    end
  end

  def page # Find a specific page based on the id sent
    @page = Page.find(params[:id])
  end

  def sale # Find products that are on sale
    @products = Product.where("sale_price IS NOT NULL").page(params[:page]).per(9)
  end

  def new #Find the last 5 products added
    @products = Product.order("id DESC").limit(9).page(params[:page]).per(9)
  end

  def cart
    # Code to get line items for the cart
  end

  def empty_cart
    session[:cart] = nil
    redirect_to root_path
  end

  def add_product
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_product
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

protected
  def initialize_session
    session[:cart] ||= []
    @cart_products = []
    session[:cart].each { |id| @cart_products << Product.find(id) }
  end
end
