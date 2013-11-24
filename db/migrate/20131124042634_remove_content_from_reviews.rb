class RemoveContentFromReviews < ActiveRecord::Migration
  def up
    remove_column :reviews, :content
  end

  def down
    add_column :reviews, :content, :string
  end
end
