require 'rails_helper'

RSpec.describe "ResourceReservations", type: :request do
  describe "GET /resource_reservations" do
    it "works! (now write some real specs)" do
      get resource_reservations_path
      expect(response).to have_http_status(200)
    end
  end
end
