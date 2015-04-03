require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :surname => "Surname",
        :address => "Address",
        :hometown => "Hometown",
        :country => "Country",
        :gender => "Gender",
        :education => "Education",
        :employment_sector => "Employment Sector",
        :employment_status => "Employment Status",
        :username => "Username",
        :password_hash => "Password Hash",
        :email => "",
        :email_confirmed => false,
        :security_stamp => "MyText",
        :phone_number => "Phone Number",
        :phone_number_confirmed => false,
        :two_factor_confirmed => false,
        :access_failed_count => 1
      ),
      User.create!(
        :name => "Name",
        :surname => "Surname",
        :address => "Address",
        :hometown => "Hometown",
        :country => "Country",
        :gender => "Gender",
        :education => "Education",
        :employment_sector => "Employment Sector",
        :employment_status => "Employment Status",
        :username => "Username",
        :password_hash => "Password Hash",
        :email => "",
        :email_confirmed => false,
        :security_stamp => "MyText",
        :phone_number => "Phone Number",
        :phone_number_confirmed => false,
        :two_factor_confirmed => false,
        :access_failed_count => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Hometown".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Education".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Sector".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Status".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password Hash".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
