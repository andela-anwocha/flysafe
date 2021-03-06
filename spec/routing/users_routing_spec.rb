require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it 'routes to #new' do
      expect(get: "/users/signup").
        to route_to('users#new')
    end

    it 'routes to #past_bookings' do
      expect(get: "/users/bookings").
        to route_to('users#past_bookings')
    end
  end
end
