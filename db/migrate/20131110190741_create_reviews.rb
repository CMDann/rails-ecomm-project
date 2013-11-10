class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.decimal :rating

      t.timestamps
    end
  end
end
