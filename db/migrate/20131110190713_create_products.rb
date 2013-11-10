class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
