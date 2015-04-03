class ChangeResourceColumns < ActiveRecord::Migration
  def change
    remove_column :resources, :function_set_id
    remove_column :resources, :node_id
    add_reference :resources, :function_set, index: true
    add_reference :resources, :node, index: true
  end
end
