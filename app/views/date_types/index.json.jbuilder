json.array!(@date_types) do |date_type|
  json.extract! date_type, :id, :name, :plainformat, :senml
  json.url date_type_url(date_type, format: :json)
end
