require 'rails_helper'

RSpec.describe "DateTypes", type: :request do
  describe "GET /date_types" do
    it "works! (now write some real specs)" do
      get date_types_path
      expect(response).to have_http_status(200)
    end
  end
end
