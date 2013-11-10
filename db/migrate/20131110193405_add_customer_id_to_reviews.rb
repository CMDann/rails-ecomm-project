class AddCustomerIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :customer_id, :integer
  end
end
