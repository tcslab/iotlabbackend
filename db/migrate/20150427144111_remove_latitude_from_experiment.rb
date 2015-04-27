class RemoveLatitudeFromExperiment < ActiveRecord::Migration
  def change
    remove_column :experiments, :start_datetime, :datetime
    remove_column :experiments, :end_datetime, :datetime
    remove_column :experiments, :latitude, :decimal
    remove_column :experiments, :longitude, :decimal
    remove_column :experiments, :location, :string
    remove_column :experiments, :radius, :integer
    remove_column :experiments, :minimum_age, :string
    remove_column :experiments, :maximum_age, :string
    remove_column :experiments, :gender, :string
    remove_column :experiments, :employment_sector, :string
    remove_column :experiments, :employment_status, :string
    remove_column :experiments, :camera, :string
    remove_column :experiments, :accelerometer, :string
  end
end
