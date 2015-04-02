json.array!(@resources) do |resource|
  json.extract! resource, :id, :ipso_index, :function_set_id_id, :node_id_id, :resource_type_id
  json.url resource_url(resource, format: :json)
end
