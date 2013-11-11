class AddLineItemIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :line_item_id, :integer
  end
end
