class ChangeNodeIdFromResource < ActiveRecord::Migration
  def change
    rename_column :resources, :function_set_id_id, :function_set_id
    rename_column :resources, :node_id_id, :node_id
  end
end
