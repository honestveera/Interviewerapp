require "rails_helper"

RSpec.describe InterviewerfeedbacksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/interviewerfeedbacks").to route_to("interviewerfeedbacks#index")
    end

    it "routes to #new" do
      expect(:get => "/interviewerfeedbacks/new").to route_to("interviewerfeedbacks#new")
    end

    it "routes to #show" do
      expect(:get => "/interviewerfeedbacks/1").to route_to("interviewerfeedbacks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/interviewerfeedbacks/1/edit").to route_to("interviewerfeedbacks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/interviewerfeedbacks").to route_to("interviewerfeedbacks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/interviewerfeedbacks/1").to route_to("interviewerfeedbacks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/interviewerfeedbacks/1").to route_to("interviewerfeedbacks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interviewerfeedbacks/1").to route_to("interviewerfeedbacks#destroy", :id => "1")
    end
    #Route testing
    it "routes to #interviewerfeed" do
      expect(:get => "/interviewerfeed").to route_to("interviewerfeedbacks#new")
    end
    it "routes to #candidatereports" do
      expect(:get => "/candidatereports").to route_to("interviewerfeedbacks#index")
    end
    it "routes to #sendemailcandidate" do
      expect(:get => "/sendemailcandidate/1").to route_to("interviewerfeedbacks#sendmailcandidate",:id=>"1")
    end

  end
end
