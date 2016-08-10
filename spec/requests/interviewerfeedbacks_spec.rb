require 'rails_helper'

RSpec.describe "Interviewerfeedbacks", type: :request do
  describe "GET /interviewerfeedbacks" do
    it "works! (now write some real specs)" do
      get interviewerfeedbacks_path
      expect(response).to have_http_status(200)
    end
  end
end
