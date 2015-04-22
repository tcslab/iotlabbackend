json.array!(@resource_reservations) do |resource_reservation|
  json.extract! resource_reservation, :id, :reservation_id, :resource_id
  json.url resource_reservation_url(resource_reservation, format: :json)
end
