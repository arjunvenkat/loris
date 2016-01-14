require "rails_helper"

RSpec.describe RoadmapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/roadmaps").to route_to("roadmaps#index")
    end

    it "routes to #new" do
      expect(:get => "/roadmaps/new").to route_to("roadmaps#new")
    end

    it "routes to #show" do
      expect(:get => "/roadmaps/1").to route_to("roadmaps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/roadmaps/1/edit").to route_to("roadmaps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/roadmaps").to route_to("roadmaps#create")
    end

    it "routes to #update" do
      expect(:put => "/roadmaps/1").to route_to("roadmaps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/roadmaps/1").to route_to("roadmaps#destroy", :id => "1")
    end

  end
end
