class RemoveColumnCustomersEmail < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :email 

  end
end
