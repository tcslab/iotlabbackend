json.array!(@interfaces) do |interface|
  json.extract! interface, :id, :name, :abreviation
  json.url interface_url(interface, format: :json)
end
