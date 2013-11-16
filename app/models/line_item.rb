class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :price,    :presence => true,
                       :numericality => { :greater_than_or_equal_to => 0 }

  validates :quantity, :presence => true,
                       :numericality => { :greater_than_or_equal_to => 0 }

  attr_accessible :price, :quantity
end
