require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Hometown/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Education/)
    expect(rendered).to match(/Employment Sector/)
    expect(rendered).to match(/Employment Status/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password Hash/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
