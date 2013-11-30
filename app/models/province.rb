class Province < ActiveRecord::Base
  has_many :customers

  validates :name,   :presence => true
  validates :gst,    :allow_nil => true, 
  					 :numericality => { :greater_than_or_equal_to => 0 }
  					 
  validates :hst,    :allow_nil => true,
  					 :numericality => { :greater_than_or_equal_to => 0 }

  validates :pst,    :allow_nil => true,
      				 :numericality => { :greater_than_or_equal_to => 0 } 

  attr_accessible :gst, :hst, :name, :pst
end
