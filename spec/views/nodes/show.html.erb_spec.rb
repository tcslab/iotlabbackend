require 'rails_helper'

RSpec.describe "nodes/show", type: :view do
  before(:each) do
    @node = assign(:node, Node.create!(
      :name => "Name",
      :location => "Location",
      :phone_flag => false,
      :urn => "Urn"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Urn/)
  end
end
