require 'rails_helper'

RSpec.describe "resource_reservations/show", type: :view do
  before(:each) do
    @resource_reservation = assign(:resource_reservation, ResourceReservation.create!(
      :reservation => nil,
      :resource => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
