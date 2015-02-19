# spec/factories/experiments.rb
require 'faker'

FactoryGirl.define do
  factory :experiment do |f|
    # f.firstname { Faker::Name.first_name }
    f.title "Lulea meeting experiment"
    f.description "In order to test the IoT Lab this service show the potential usage of smartphone crowdsource"
    f.start_datetime "18/02/2015 02:00 pm"
    f.end_datetime "20/02/2015 02:00 pm"
    f.participation ""
    f.voters "24"
    f.ranking "1"
    f.interaction ""
    f.status "finished"
    f.location "switzerland"
    f.radius "10"
    f.minimum_age "10"
    f.maximum_age "20"
    f.gender "m"
    f.employment_sector "IT"
    f.employment_status "full-time"
    f.camera "sdfasdf"
    f.accelerometer "23"
    f.location_sensor "aa"
    f.magnetometer "23"
  end
end
