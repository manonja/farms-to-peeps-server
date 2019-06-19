class RemoveProductIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_reference :categories, :product, index:true, foreign_key: true
  end
end
