class Product < ActiveRecord::Base
  belongs_to :line_item
  has_many :reviews

  attr_accessible :description, :name, :price, :stock_quantity
end
