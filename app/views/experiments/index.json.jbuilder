json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :title, :description, :start_datetime, :end_datetime, :participation, :voters, :ranking, :interaction, :status, :location, :radius, :minimum_age, :maximum_age, :gender, :employment_sector, :employment_status, :camera, :location, :accelerometer, :location_sensor, :magnetometer
  json.url experiment_url(experiment, format: :json)
end
