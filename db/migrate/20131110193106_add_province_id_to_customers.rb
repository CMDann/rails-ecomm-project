class AddProvinceIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :province_id, :integer
  end
end
