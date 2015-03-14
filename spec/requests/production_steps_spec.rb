require 'rails_helper'

RSpec.describe "ProductionSteps", :type => :request do
  describe "GET /production_steps" do
    it "works! (now write some real specs)" do
      get production_steps_path
      expect(response).to have_http_status(200)
    end
  end
end
