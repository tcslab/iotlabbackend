require 'rails_helper'

RSpec.describe "resource_reservations/edit", type: :view do
  before(:each) do
    @resource_reservation = assign(:resource_reservation, ResourceReservation.create!(
      :reservation => nil,
      :resource => nil
    ))
  end

  it "renders the edit resource_reservation form" do
    render

    assert_select "form[action=?][method=?]", resource_reservation_path(@resource_reservation), "post" do

      assert_select "input#resource_reservation_reservation_id[name=?]", "resource_reservation[reservation_id]"

      assert_select "input#resource_reservation_resource_id[name=?]", "resource_reservation[resource_id]"
    end
  end
end
