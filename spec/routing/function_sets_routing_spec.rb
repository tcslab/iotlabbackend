require "rails_helper"

RSpec.describe FunctionSetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/function_sets").to route_to("function_sets#index")
    end

    it "routes to #new" do
      expect(:get => "/function_sets/new").to route_to("function_sets#new")
    end

    it "routes to #show" do
      expect(:get => "/function_sets/1").to route_to("function_sets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/function_sets/1/edit").to route_to("function_sets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/function_sets").to route_to("function_sets#create")
    end

    it "routes to #update" do
      expect(:put => "/function_sets/1").to route_to("function_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/function_sets/1").to route_to("function_sets#destroy", :id => "1")
    end

  end
end
