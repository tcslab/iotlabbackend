require 'rails_helper'

RSpec.describe "DataTypes", type: :request do
  describe "GET /data_types" do
    it "works! (now write some real specs)" do
      get data_types_path
      expect(response).to have_http_status(200)
    end
  end
end
