class RemoveColumnFarmersEmail < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :email 

  end
end
