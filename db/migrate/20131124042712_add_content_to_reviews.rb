class AddContentToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :content, :text
  end
end
