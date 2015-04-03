json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :address, :hometown, :country, :gender, :education, :birthdate, :employment_sector, :employment_status, :username, :password_hash, :email, :email_confirmed, :security_stamp, :phone_number, :phone_number_confirmed, :two_factor_confirmed, :lockout_end_date_utc, :access_failed_count
  json.url user_url(user, format: :json)
end
