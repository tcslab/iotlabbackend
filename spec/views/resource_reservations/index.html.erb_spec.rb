require 'rails_helper'

RSpec.describe "resource_reservations/index", type: :view do
  before(:each) do
    assign(:resource_reservations, [
      ResourceReservation.create!(
        :reservation => nil,
        :resource => nil
      ),
      ResourceReservation.create!(
        :reservation => nil,
        :resource => nil
      )
    ])
  end

  it "renders a list of resource_reservations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
