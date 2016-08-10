require 'rails_helper'

RSpec.describe "Candidateprofiles", type: :request do
  describe "GET /candidateprofiles" do
    it "works! (now write some real specs)" do
      get candidateprofiles_path
      expect(response).to have_http_status(200)
    end
  end
end
