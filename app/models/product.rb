class Product < ActiveRecord::Base
  has_many :line_items
  has_many :reviews

  validates :name,           :presence => true
  validates :description,    :presence => true
  validates :price,          :presence => true
  validates :stock_quantity, :presence => true
  validates :category,       :presence => true

  attr_accessible :description, :name, :price, :stock_quantity, :category
end
