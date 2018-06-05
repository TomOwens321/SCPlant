require 'rails_helper'

RSpec.describe "ProductionCards", :type => :request do
  describe "GET /production_cards" do
    it "works! (now write some real specs)" do
      get production_cards_path
      expect(response).to have_http_status(200)
    end
  end
end
