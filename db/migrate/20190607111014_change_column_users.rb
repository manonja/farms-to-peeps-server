class ChangeColumnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :role, :int, :default => 0

  end
end
