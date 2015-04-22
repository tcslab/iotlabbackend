json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :start_datetime, :end_datetime, :user_id, :reservation_key
  json.url reservation_url(reservation, format: :json)
end
