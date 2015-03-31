require 'rails_helper'

RSpec.describe "Genus", :type => :request do
  describe "GET /genus" do
    it "works! (now write some real specs)" do
      get genus_index_path
      expect(response).to have_http_status(200)
    end
  end
end
