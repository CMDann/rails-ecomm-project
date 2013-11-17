class SearchController < ApplicationController

  def search #Define the search query here
    @Products = Product.search_for(params[:query])
  end

end
