class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :quantity
      t.string :url_img
      t.references :farmer, foreign_key: true

      t.timestamps
    end
  end
end
