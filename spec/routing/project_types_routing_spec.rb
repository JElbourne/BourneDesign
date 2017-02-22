require "rails_helper"

RSpec.describe ProjectTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/project_types").to route_to("project_types#index")
    end

    it "routes to #new" do
      expect(:get => "/project_types/new").to route_to("project_types#new")
    end

    it "routes to #show" do
      expect(:get => "/project_types/1").to route_to("project_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/project_types/1/edit").to route_to("project_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/project_types").to route_to("project_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/project_types/1").to route_to("project_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/project_types/1").to route_to("project_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/project_types/1").to route_to("project_types#destroy", :id => "1")
    end

  end
end
