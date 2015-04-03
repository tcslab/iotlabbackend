json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :title, :description, :start_datetime, :end_datetime, :participation, :devices, :voters, :ranking, :interaction, :status, :latitude, :longitude, :location, :radius, :minimum_age, :maximum_age, :gender, :employment_sector, :employment_status, :camera, :accelerometer
  json.url experiment_url(experiment, format: :json)
end
