class HomeController < ApplicationController
  def index # 
    @products   = Product.order(:name).page(params[:page]).per(3)
  end # Load the app/views/home/index

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end # Load the app/views/home/show

  def search
    # No Code Required
  end

  def search_results
    @products = Product.where("name LIKE ?", "%#{params[:keywords]}%").page(params[:page]).per(9)
  end

  def page # Find a specific page based on the id sent
    @page = Page.find(params[:id])
  end

  def sale # Find products that are on sale
    @products = Product.where("sale_price IS NOT NULL").page(params[:page]).per(9)
  end
end
