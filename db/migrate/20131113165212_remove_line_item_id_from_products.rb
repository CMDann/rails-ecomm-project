class RemoveLineItemIdFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :line_item_id
  end

  def down
    add_column :products, :line_item_id, :integer
  end
end
