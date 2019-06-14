class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string "name"
      t.float "price"
      t.string "quantity"
      t.string "url_img"
      t.integer "farmer_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["farmer_id"], name: "index_products_on_farmer_id"
    end
  end
end
