require 'rails_helper'

RSpec.describe "nodes/show", type: :view do
  before(:each) do
    @node = assign(:node, Node.create!(
      :name => "Name",
      :latitude => "latitude",
      :longitude => "longitude",
      :provider_id => "provider_id",
      :phone_flag => false,
      :urn => "Urn"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/provider_id/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Urn/)
  end
end
