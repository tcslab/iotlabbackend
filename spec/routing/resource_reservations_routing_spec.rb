require "rails_helper"

RSpec.describe ResourceReservationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resource_reservations").to route_to("resource_reservations#index")
    end

    it "routes to #new" do
      expect(:get => "/resource_reservations/new").to route_to("resource_reservations#new")
    end

    it "routes to #show" do
      expect(:get => "/resource_reservations/1").to route_to("resource_reservations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resource_reservations/1/edit").to route_to("resource_reservations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resource_reservations").to route_to("resource_reservations#create")
    end

    it "routes to #update" do
      expect(:put => "/resource_reservations/1").to route_to("resource_reservations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resource_reservations/1").to route_to("resource_reservations#destroy", :id => "1")
    end

  end
end
