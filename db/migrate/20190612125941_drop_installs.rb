class DropInstalls < ActiveRecord::Migration[5.2]
  def change
    drop_table :category_products
  end
end
