require "rails_helper"

RSpec.describe DataTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/data_types").to route_to("data_types#index")
    end

    it "routes to #new" do
      expect(:get => "/data_types/new").to route_to("data_types#new")
    end

    it "routes to #show" do
      expect(:get => "/data_types/1").to route_to("data_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/data_types/1/edit").to route_to("data_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/data_types").to route_to("data_types#create")
    end

    it "routes to #update" do
      expect(:put => "/data_types/1").to route_to("data_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/data_types/1").to route_to("data_types#destroy", :id => "1")
    end

  end
end
