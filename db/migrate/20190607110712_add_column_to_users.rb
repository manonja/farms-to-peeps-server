class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :int, :default => true

  end
end
