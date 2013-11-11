class LineItem < ActiveRecord::Base
  belongs_to :order

  has_many :products

  validates :price,    :presence => true
  validates :quantity, :presence => true

  attr_accessible :price, :quantity
end
