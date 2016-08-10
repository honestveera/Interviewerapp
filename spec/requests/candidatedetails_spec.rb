require 'rails_helper'

RSpec.describe "Candidatedetails", type: :request do
  describe "GET /candidatedetails" do
    it "works! (now write some real specs)" do
      get candidatedetails_path
      expect(response).to have_http_status(200)
    end
  end
end
