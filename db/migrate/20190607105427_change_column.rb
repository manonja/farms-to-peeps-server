class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :isAdmin, :boolean, :default => false
  end
end
