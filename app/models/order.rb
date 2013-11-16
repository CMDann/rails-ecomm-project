class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :lineitems

  validates :status,      :presence => true
  validates :order_total, :presence => true,
                          :numericality => { :greater_than_or_equal_to => 0 }

  validates :gst_rate,    :numericality => { :greater_than_or_equal_to => 0 }
  validates :hst_rate,    :numericality => { :greater_than_or_equal_to => 0 }
  validates :pst_rate,    :numericality => { :greater_than_or_equal_to => 0 }               

  attr_accessible :gst_rate, :hst_rate, :pst_rate, :status, :order_total, :customer_id
end
