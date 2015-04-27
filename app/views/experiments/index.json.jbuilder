json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :title, :description, :participation, :voters, :ranking, :interaction, :status
  json.url experiment_url(experiment, format: :json)
end
