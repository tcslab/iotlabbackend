require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :user => nil,
      :reservation_key => "MyString"
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_user_id[name=?]", "reservation[user_id]"

      assert_select "input#reservation_reservation_key[name=?]", "reservation[reservation_key]"
    end
  end
end
