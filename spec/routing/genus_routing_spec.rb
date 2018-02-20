require "rails_helper"

RSpec.describe GenusController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/genus").to route_to("genus#index")
    end

    it "routes to #new" do
      expect(:get => "/genus/new").to route_to("genus#new")
    end

    it "routes to #show" do
      expect(:get => "/genus/1").to route_to("genus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/genus/1/edit").to route_to("genus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/genus").to route_to("genus#create")
    end

    it "routes to #update" do
      expect(:put => "/genus/1").to route_to("genus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/genus/1").to route_to("genus#destroy", :id => "1")
    end

  end
end
