class AddProductToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :product, index: true

  end
end
