require "rails_helper"

RSpec.describe SkillsetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skillsets").to route_to("skillsets#index")
    end

    it "routes to #new" do
      expect(:get => "/skillsets/new").to route_to("skillsets#new")
    end

    it "routes to #show" do
      expect(:get => "/skillsets/1").to route_to("skillsets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skillsets/1/edit").to route_to("skillsets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skillsets").to route_to("skillsets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skillsets/1").to route_to("skillsets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skillsets/1").to route_to("skillsets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skillsets/1").to route_to("skillsets#destroy", :id => "1")
    end

  end
end
