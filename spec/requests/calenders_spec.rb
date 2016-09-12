require 'rails_helper'

RSpec.describe "Calenders", type: :request do
  describe "GET /calenders" do
    it "works! (now write some real specs)" do
      get calenders_path
      expect(response).to have_http_status(200)
    end
  end
end
