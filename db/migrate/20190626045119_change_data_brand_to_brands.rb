class ChangeDataBrandToBrands < ActiveRecord::Migration[5.2]
  def change
    rename_column :brands, :name, :brand
    add_column :brands, :cost, :string
    remove_column :posts, :costs, :string
  end
end
