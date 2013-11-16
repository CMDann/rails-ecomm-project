class Province < ActiveRecord::Base
  has_many :customers

  validates :name,   :presence => true
  validates :gst,    :numericality => { :greater_than_or_equal_to => 0 }
  validates :hst,    :numericality => { :greater_than_or_equal_to => 0 }
  validates :pst,    :numericality => { :greater_than_or_equal_to => 0 } 

  attr_accessible :gst, :hst, :name, :pst
end
