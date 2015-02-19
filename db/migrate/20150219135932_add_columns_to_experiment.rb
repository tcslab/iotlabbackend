class AddColumnsToExperiment < ActiveRecord::Migration
  def change
    add_column :experiments, :location_sensor, :string
    add_column :experiments, :magnetometer, :string
  end
end
