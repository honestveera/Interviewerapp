require "rails_helper"

RSpec.describe CandidateprofilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/candidateprofiles").to route_to("candidateprofiles#index")
    end

    it "routes to #new" do
      expect(:get => "/candidateprofiles/new").to route_to("candidateprofiles#new")
    end

    it "routes to #show" do
      expect(:get => "/candidateprofiles/1").to route_to("candidateprofiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/candidateprofiles/1/edit").to route_to("candidateprofiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/candidateprofiles").to route_to("candidateprofiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/candidateprofiles/1").to route_to("candidateprofiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/candidateprofiles/1").to route_to("candidateprofiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/candidateprofiles/1").to route_to("candidateprofiles#destroy", :id => "1")
    end
    #Routes testing
    it "routes to #search" do
      expect(:get => "/candidateprofiles/search").to route_to("candidateprofiles#search")
    end
    it "routes to Match routes" do
      expect(:get => "/candidateschedule").to route_to("candidateprofiles#new")
    end
    it "routes to #reports" do
      expect(:get =>"/candidateschedulereports").to route_to("candidateprofiles#index")
    end
    it "routes to signout" do
      expect(:get =>"/signout").to route_to("application#signout")
    end

  end
end
