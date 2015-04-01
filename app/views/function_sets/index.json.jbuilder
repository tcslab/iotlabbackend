json.array!(@function_sets) do |function_set|
  json.extract! function_set, :id, :name, :restype, :description, :root_path
  json.url function_set_url(function_set, format: :json)
end
