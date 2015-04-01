class CreateFunctionSets < ActiveRecord::Migration
  def change
    create_table :function_sets do |t|
      t.string :name, limit: 30
      t.string :restype
      t.text :description
      t.string :root_path, limit: 20

      t.timestamps
    end
    add_index :function_sets, :name, unique: true
  end
end
