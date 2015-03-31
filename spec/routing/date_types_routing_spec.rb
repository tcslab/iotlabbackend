require "rails_helper"

RSpec.describe DateTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/date_types").to route_to("date_types#index")
    end

    it "routes to #new" do
      expect(:get => "/date_types/new").to route_to("date_types#new")
    end

    it "routes to #show" do
      expect(:get => "/date_types/1").to route_to("date_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/date_types/1/edit").to route_to("date_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/date_types").to route_to("date_types#create")
    end

    it "routes to #update" do
      expect(:put => "/date_types/1").to route_to("date_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/date_types/1").to route_to("date_types#destroy", :id => "1")
    end

  end
end
