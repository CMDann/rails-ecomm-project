class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer

  attr_accessible :content, :rating
end
