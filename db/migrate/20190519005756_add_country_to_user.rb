class AddCountryToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :country, :string
    remove_column :posts, :national, :string
  end
end
