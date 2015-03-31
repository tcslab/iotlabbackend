require 'faker'
FactoryGirl.define do
  factory :resource_type do
    name { Faker::Name.first_name }
    # restype "MyString"
    # notes "MyText"
    # interface_id nil
    # data_types_id ""
  end
end
