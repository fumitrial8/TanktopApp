class ChangeDataBrandToPost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :brand, :string
  end
end
