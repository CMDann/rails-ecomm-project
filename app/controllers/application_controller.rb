class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :initialize_session

protected
  def initialize_session
    session[:cart] ||= []
    @cart_products = []
    session[:cart].each { |id| @cart_products << Product.find(id) }
  end
end
