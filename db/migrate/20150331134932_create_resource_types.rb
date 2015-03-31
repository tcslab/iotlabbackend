class CreateResourceTypes < ActiveRecord::Migration
  def change
    create_table :resource_types do |t|
      t.string :name
      t.string :restype
      t.text :notes
      t.references :interface, index: true
      t.references :data_type, index: true

      t.timestamps
    end
  end
end
