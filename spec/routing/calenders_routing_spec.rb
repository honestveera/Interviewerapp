require "rails_helper"

RSpec.describe CalendersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/calenders").to route_to("calenders#index")
    end

    it "routes to #new" do
      expect(:get => "/calenders/new").to route_to("calenders#new")
    end

    it "routes to #show" do
      expect(:get => "/calenders/1").to route_to("calenders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/calenders/1/edit").to route_to("calenders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/calenders").to route_to("calenders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/calenders/1").to route_to("calenders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/calenders/1").to route_to("calenders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/calenders/1").to route_to("calenders#destroy", :id => "1")
    end

  end
end
