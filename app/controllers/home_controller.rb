class HomeController < ApplicationController
  def index
    @products = Product.order(:name)
  end # Load the app/views/home/index

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end # Load the app/views/home/show

  def search
    # No Code Required
  end

  def search_results
    @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
  end

  def page # Find a specific page based on the id sent
    @page = Page.find(params[:id])
  end
end
