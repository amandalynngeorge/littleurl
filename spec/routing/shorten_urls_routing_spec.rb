require "rails_helper"

RSpec.describe ShortenUrlsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/shorten_urls").to route_to("shorten_urls#index")
    end

    it "routes to #new" do
      expect(:get => "/shorten_urls/new").to route_to("shorten_urls#new")
    end

    it "routes to #show" do
      expect(:get => "/shorten_urls/1").to route_to("shorten_urls#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shorten_urls").to route_to("shorten_urls#create")
    end
  end
end
