class AddNameToResource < ActiveRecord::Migration
  def change
    add_column :resources, :name, :string, limit: 40
    add_index :resources, :name, unique: true
  end
end
