class CreateDataTypes < ActiveRecord::Migration
  def change
    create_table :data_types do |t|
      t.string :name, limit: 30
      t.string :plainformat, limit: 30
      t.string :senml, limit: 30

      t.timestamps
    end
  end
end
