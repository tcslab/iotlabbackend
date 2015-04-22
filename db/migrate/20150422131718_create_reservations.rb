class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.references :user, index: true
      t.string :reservation_key

      t.timestamps
    end
  end
end
