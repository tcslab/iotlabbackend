require 'rails_helper'

RSpec.describe "providers/index", type: :view do
  before(:each) do
    assign(:providers, [
      Provider.create!(
        :name => "Name",
        :description => "MyText",
        :urn_prefix => "Urn Prefix",
        :address => "Address",
        :location => "Location",
        :url => "Url",
        :user => nil
      ),
      Provider.create!(
        :name => "Name",
        :description => "MyText",
        :urn_prefix => "Urn Prefix",
        :address => "Address",
        :location => "Location",
        :url => "Url",
        :user => nil
      )
    ])
  end

  it "renders a list of providers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Urn Prefix".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
