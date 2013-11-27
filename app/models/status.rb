class Status < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :orders

  validates :description, :presence => true
  validates :title,       :presence => true

end
