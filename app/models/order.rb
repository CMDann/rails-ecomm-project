class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :lineitems

  attr_accessible :gst_rate, :hst_rate, :pst_rate, :status
end
