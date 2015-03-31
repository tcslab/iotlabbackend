class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.string :name, limit: 30
      t.string :abreviation, limit: 10

      t.timestamps
    end
  end
end
