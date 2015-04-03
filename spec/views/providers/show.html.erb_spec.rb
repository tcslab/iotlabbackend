require 'rails_helper'

RSpec.describe "providers/show", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :name => "Name",
      :description => "MyText",
      :urn_prefix => "Urn Prefix",
      :address => "Address",
      :location => "Location",
      :url => "Url",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Urn Prefix/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
  end
end
