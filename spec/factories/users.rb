FactoryGirl.define do
  factory :user do
    name "MyString"
surname "MyString"
address "MyString"
hometown "MyString"
country "MyString"
gender "MyString"
education "MyString"
birthdate "2015-04-03"
employment_sector "MyString"
employment_status "MyString"
username "MyString"
password_hash "MyString"
email ""
email_confirmed false
security_stamp "MyText"
phone_number "MyString"
phone_number_confirmed false
two_factor_confirmed false
lockout_end_date_utc "2015-04-03 11:08:46"
access_failed_count 1
  end

end
