class Category < ActiveRecord::Base
  has_many :products

  validates :title,           :presence => true
  validates :description,    :presence => true

  attr_accessible :description, :title
end
