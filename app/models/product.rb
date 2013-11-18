class Product < ActiveRecord::Base
  has_many :line_items
  has_many :reviews
  belongs_to :category

  validates :name,           :presence => true
  validates :description,    :presence => true
  validates :price,          :presence => true,
                             :numericality => { :greater_than_or_equal_to => 0 }

  validates :stock_quantity, :presence => true,
                             :numericality => { :greater_than_or_equal_to => 0 }
                             
  # validates :category,       :presence => true

  attr_accessible :description, :name, :price, :stock_quantity, :category_id, :image_file_name

  # Scoped_Search requires you set the search variables here
  scoped_search :on => [:name, :description, :price]
end
