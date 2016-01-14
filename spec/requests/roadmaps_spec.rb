require 'rails_helper'

RSpec.describe "Roadmaps", type: :request do
  describe "GET /roadmaps" do
    it "works! (now write some real specs)" do
      get roadmaps_path
      expect(response).to have_http_status(200)
    end
  end
end
