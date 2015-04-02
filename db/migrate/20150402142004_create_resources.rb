class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :ipso_index
      t.references :function_set_id, index: true
      t.references :node_id, index: true
      t.references :resource_type_id

      t.timestamps
    end
  end
end
