class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :price,    :presence => true
  validates :quantity, :presence => true

  attr_accessible :price, :quantity
end
