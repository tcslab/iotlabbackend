require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :surname => "MyString",
      :address => "MyString",
      :hometown => "MyString",
      :country => "MyString",
      :gender => "MyString",
      :education => "MyString",
      :employment_sector => "MyString",
      :employment_status => "MyString",
      :username => "MyString",
      :password_hash => "MyString",
      :email => "",
      :email_confirmed => false,
      :security_stamp => "MyText",
      :phone_number => "MyString",
      :phone_number_confirmed => false,
      :two_factor_confirmed => false,
      :access_failed_count => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_surname[name=?]", "user[surname]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_hometown[name=?]", "user[hometown]"

      assert_select "input#user_country[name=?]", "user[country]"

      assert_select "input#user_gender[name=?]", "user[gender]"

      assert_select "input#user_education[name=?]", "user[education]"

      assert_select "input#user_employment_sector[name=?]", "user[employment_sector]"

      assert_select "input#user_employment_status[name=?]", "user[employment_status]"

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_password_hash[name=?]", "user[password_hash]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_email_confirmed[name=?]", "user[email_confirmed]"

      assert_select "textarea#user_security_stamp[name=?]", "user[security_stamp]"

      assert_select "input#user_phone_number[name=?]", "user[phone_number]"

      assert_select "input#user_phone_number_confirmed[name=?]", "user[phone_number_confirmed]"

      assert_select "input#user_two_factor_confirmed[name=?]", "user[two_factor_confirmed]"

      assert_select "input#user_access_failed_count[name=?]", "user[access_failed_count]"
    end
  end
end
