json.array!(@experiments) do |experiment|
  json.extract! experiment, :id
  json.url experiment_url(experiment, format: :json)
end
