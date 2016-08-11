require "rails_helper"

RSpec.describe CandidatedetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/candidatedetails").to route_to("candidatedetails#index")
    end

    it "routes to #new" do
      expect(:get => "/candidatedetails/new").to route_to("candidatedetails#new")
    end

    it "routes to #show" do
      expect(:get => "/candidatedetails/1").to route_to("candidatedetails#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/candidatedetails/1/edit").to route_to("candidatedetails#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/candidatedetails").to route_to("candidatedetails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/candidatedetails/1").to route_to("candidatedetails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/candidatedetails/1").to route_to("candidatedetails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/candidatedetails/1").to route_to("candidatedetails#destroy", :id => "1")
    end
    #Routing Changes
    it "routes to #search" do
      expect(:get => "/candidatedetails/search").to route_to("candidatedetails#search")
    end
    it "routes to candidateentry equal to candidatedetails#new" do
      expect(:get => "/candidateentry").to route_to("candidatedetails#new")
    end

  end
end
