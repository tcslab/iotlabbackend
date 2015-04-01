require 'rails_helper'

RSpec.describe "FunctionSets", type: :request do
  describe "GET /function_sets" do
    it "works! (now write some real specs)" do
      get function_sets_path
      expect(response).to have_http_status(200)
    end
  end
end
