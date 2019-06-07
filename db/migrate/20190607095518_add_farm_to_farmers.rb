class AddFarmToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :farm, :string
  end
end
