class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer

  validates :content, :presence => true
  validates :rating,  :presence => true

  attr_accessible :content, :rating, :product_id, :customer_id
end
