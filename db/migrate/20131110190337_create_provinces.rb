class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst

      t.timestamps
    end
  end
end
