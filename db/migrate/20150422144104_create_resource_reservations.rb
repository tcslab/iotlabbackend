class CreateResourceReservations < ActiveRecord::Migration
  def change
    create_table :resource_reservations do |t|
      t.references :reservation, index: true
      t.references :resource, index: true

      t.timestamps
    end
  end
end
