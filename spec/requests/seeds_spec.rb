require 'rails_helper'

RSpec.describe "Seeds", :type => :request do
  describe "GET /seeds" do
    it "works! (now write some real specs)" do
      get seeds_path
      expect(response).to have_http_status(200)
    end
  end
end
