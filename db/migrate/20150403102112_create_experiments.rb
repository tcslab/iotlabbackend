class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title, limit: 80
      t.text :description
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :participation
      t.integer :devices
      t.integer :voters
      t.decimal :ranking
      t.string :interaction
      t.string :status
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.string :location
      t.integer :radius
      t.string :minimum_age
      t.string :maximum_age
      t.string :gender
      t.string :employment_sector
      t.string :employment_status
      t.string :camera
      t.string :accelerometer

      t.timestamps
    end
  end
end
