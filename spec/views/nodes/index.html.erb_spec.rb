require 'rails_helper'

RSpec.describe "nodes/index", type: :view do
  before(:each) do
    assign(:nodes, [
      Node.create!(
        :name => "Telos-b mote a",
        :latitude => 46.176388,
        :longitude => 6.139959,
        :provider_id => 1,
        :phone_flag => false,
        :urn => "unige.a"
      ),
      Node.create!(
        :name => "Telos-b mote b",
        :latitude => 49.176388,
        :longitude => 9.139959,
        :provider_id => 2,
        :phone_flag => false,
        :urn => "unige.b"
      )
    ])
  end

  it "renders a list of nodes" do
    render
    assert_select "tr>td", :text => "Telos-b mote b".to_s, :count => 2
    assert_select "tr>td", :text => 46.176388.to_s, :count => 2
    assert_select "tr>td", :text => 6.139959.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "unige.b".to_s, :count => 2
  end
end
