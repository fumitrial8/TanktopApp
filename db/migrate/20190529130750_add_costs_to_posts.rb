class AddCostsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :costs, :string
    add_column :posts, :ages, :string
    add_column :posts, :lines, :string
  end
end
