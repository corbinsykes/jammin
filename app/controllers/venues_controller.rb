class VenuesController < ApplicationController

  def index
    @venues = Venue.all
    respond_to do|format|
      format.html
      format.json {render json: @venues, root: false}
    end
  end
  # need something like this...
  # def create
  #   create new venue
  #   geocode the address
  # end
end