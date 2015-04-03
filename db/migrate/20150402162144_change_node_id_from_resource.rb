class ChangeNodeIdFromResource < ActiveRecord::Migration
  def change
    rename_column :resources, :function_set_id_id, :function_set_id
    rename_column :resources, :node_id_id, :node_id
    remove_column :resources, :resource_type_id_id
    add_reference :resources, :resource_type, index: true
  end
end
