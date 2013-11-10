class Province < ActiveRecord::Base
  has_many :customers

  attr_accessible :gst, :hst, :name, :pst
end
