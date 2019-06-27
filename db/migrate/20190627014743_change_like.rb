class ChangeLike < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :like, :post_id
    add_column :likes, :post_user_id, :integer
    rename_column :likes, :user_id, :like_user_id
  end
end
