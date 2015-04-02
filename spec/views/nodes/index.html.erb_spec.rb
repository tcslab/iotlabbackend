require 'rails_helper'

RSpec.describe "nodes/index", type: :view do
  before(:each) do
    assign(:nodes, [
      Node.create!(
        :name => "Name",
        :location => "Location",
        :phone_flag => false,
        :urn => "Urn"
      ),
      Node.create!(
        :name => "Name",
        :location => "Location",
        :phone_flag => false,
        :urn => "Urn"
      )
    ])
  end

  it "renders a list of nodes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Urn".to_s, :count => 2
  end
end
