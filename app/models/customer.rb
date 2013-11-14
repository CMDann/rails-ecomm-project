class Customer < ActiveRecord::Base
  belongs_to :province

  has_many :reviews
  has_many :orders

  validates :first_name, :presence => true
  validates :last_name,  :presence => true
  validates :address,    :presence => true
  validates :city,       :presence => true
  validates :email,      :presence => true
  validates :postal_code,:presence => true
  validates :province_id,:presence => true

  attr_accessible :address, :city, :email, :first_name, :last_name, :postal_code, :province_id
end
