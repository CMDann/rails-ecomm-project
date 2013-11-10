class Customer < ActiveRecord::Base
  belongs_to :province

  has_many :reviews
  has_many :orders

  attr_accessible :address, :city, :email, :first_name, :last_name, :postal
end
