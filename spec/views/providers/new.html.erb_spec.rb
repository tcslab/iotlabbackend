require 'rails_helper'

RSpec.describe "providers/new", type: :view do
  before(:each) do
    assign(:provider, Provider.new(
      :name => "MyString",
      :description => "MyText",
      :urn_prefix => "MyString",
      :address => "MyString",
      :location => "MyString",
      :url => "MyString",
      :user => nil
    ))
  end

  it "renders new provider form" do
    render

    assert_select "form[action=?][method=?]", providers_path, "post" do

      assert_select "input#provider_name[name=?]", "provider[name]"

      assert_select "textarea#provider_description[name=?]", "provider[description]"

      assert_select "input#provider_urn_prefix[name=?]", "provider[urn_prefix]"

      assert_select "input#provider_address[name=?]", "provider[address]"

      assert_select "input#provider_location[name=?]", "provider[location]"

      assert_select "input#provider_url[name=?]", "provider[url]"

      assert_select "input#provider_user_id[name=?]", "provider[user_id]"
    end
  end
end
