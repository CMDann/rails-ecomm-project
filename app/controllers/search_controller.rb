class SearchController < ApplicationController

  def category # Load products of a specific category
    @category = Category.find(params[:id])
    @products = Product.where(:category_id => params[:id]).page(params[:page])
  end

end
