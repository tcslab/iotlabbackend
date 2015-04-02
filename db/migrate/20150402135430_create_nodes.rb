class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name, limit: 30
      t.string :location, limit: 50
      t.boolean :phone_flag
      t.string :urn, limit: 30

      t.timestamps
    end
  end
end
