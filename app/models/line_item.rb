class LineItem < ActiveRecord::Base
  belongs_to :order

  has_many :products

  attr_accessible :price, :quantity
end
