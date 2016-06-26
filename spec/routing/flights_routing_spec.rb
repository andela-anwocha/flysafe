require "rails_helper"

RSpec.describe FlightsController, type: :routing do
  describe "routing" do
    it "routes to #search" do
      expect(:get => "/flights/search").to route_to("flights#search")
    end
  end

end
