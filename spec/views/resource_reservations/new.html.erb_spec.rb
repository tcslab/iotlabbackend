require 'rails_helper'

RSpec.describe "resource_reservations/new", type: :view do
  before(:each) do
    assign(:resource_reservation, ResourceReservation.new(
      :reservation => nil,
      :resource => nil
    ))
  end

  it "renders new resource_reservation form" do
    render

    assert_select "form[action=?][method=?]", resource_reservations_path, "post" do

      assert_select "input#resource_reservation_reservation_id[name=?]", "resource_reservation[reservation_id]"

      assert_select "input#resource_reservation_resource_id[name=?]", "resource_reservation[resource_id]"
    end
  end
end
