class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :customer_id, :int
    add_column :users, :farmer_id, :int
  end
end
