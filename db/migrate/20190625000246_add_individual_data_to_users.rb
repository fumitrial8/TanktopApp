class AddIndividualDataToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :sport, :string
    remove_column :posts, :ages, :integer
    remove_column :posts, :lines, :integer
  end
end
