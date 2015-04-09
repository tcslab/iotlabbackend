json.array!(@nodes) do |node|
  json.extract! node, :id, :name, :latitude, :longitude, :provider_id, :phone_flag, :urn
  json.url node_url(node, format: :json)
end
