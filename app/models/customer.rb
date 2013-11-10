class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :email, :first_name, :last_name, :postal
end
