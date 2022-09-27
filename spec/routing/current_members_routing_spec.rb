require "rails_helper"

RSpec.describe CurrentMembersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/current_members").to route_to("current_members#index")
    end

    it "routes to #new" do
      expect(get: "/current_members/new").to route_to("current_members#new")
    end

    it "routes to #show" do
      expect(get: "/current_members/1").to route_to("current_members#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/current_members/1/edit").to route_to("current_members#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/current_members").to route_to("current_members#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/current_members/1").to route_to("current_members#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/current_members/1").to route_to("current_members#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/current_members/1").to route_to("current_members#destroy", id: "1")
    end
  end
end
