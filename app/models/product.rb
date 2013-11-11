class Product < ActiveRecord::Base
  belongs_to :line_item
  has_many :reviews

  validates :name,           :presence => true
  validates :description,    :presence => true
  validates :price,          :presence => true
  validates :stock_quantity, :presence => true

  attr_accessible :description, :name, :price, :stock_quantity
end
