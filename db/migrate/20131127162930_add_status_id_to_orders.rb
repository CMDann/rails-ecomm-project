class AddStatusIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :status_id, :integer
  end
end
