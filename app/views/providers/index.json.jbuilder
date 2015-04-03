json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :description, :urn_prefix, :address, :location, :url, :user_id
  json.url provider_url(provider, format: :json)
end
