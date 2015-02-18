class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.string :description
      t.string :start_datetime
      t.string :end_datetime
      t.string :participation
      t.string :voters
      t.string :ranking
      t.string :interaction
      t.string :status
      t.string :location
      t.string :radius
      t.string :minimum_age
      t.string :maximum_age
      t.string :gender
      t.string :employment_sector
      t.string :employment_status
      t.string :camera
      t.string :location
      t.string :accelerometer

      t.timestamps
    end
  end
end
