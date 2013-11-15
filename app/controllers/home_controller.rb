class HomeController < ApplicationController
  def index
    @products = Product.order(:name)
  end # Load the app/views/home/index

  def show
    @product = Product.find(params[:id])
  end # Load the app/views/home/show
end
