class AddImageFileNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_file_name, :string
  end
end
