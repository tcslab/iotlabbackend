require 'rails_helper'

RSpec.describe "RewardCategories", type: :request do
  describe "GET /reward_categories" do
    it "works! (now write some real specs)" do
      get reward_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
