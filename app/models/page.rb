class Page < ActiveRecord::Base
  attr_accessible :content, :title

  # The pages within the website that are not directly related to selling products
  # These can be about page, contact pages, whatever you like.

  validates :content, :presence => true
  validates :title,   :presence => true
end
