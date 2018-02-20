require "rails_helper"

RSpec.describe ProductionStepsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/production_steps").to route_to("production_steps#index")
    end

    it "routes to #new" do
      expect(:get => "/production_steps/new").to route_to("production_steps#new")
    end

    it "routes to #show" do
      expect(:get => "/production_steps/1").to route_to("production_steps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/production_steps/1/edit").to route_to("production_steps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/production_steps").to route_to("production_steps#create")
    end

    it "routes to #update" do
      expect(:put => "/production_steps/1").to route_to("production_steps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/production_steps/1").to route_to("production_steps#destroy", :id => "1")
    end

  end
end
