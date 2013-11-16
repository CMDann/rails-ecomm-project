class AddOrderTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_total, :float
  end
end
