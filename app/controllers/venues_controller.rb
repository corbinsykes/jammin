class VenuesController < ApplicationController

  def index
    @venues = Venue.all
    respond_to do|format|
      format.html
      format.json {render json: @venues, root: false}
    end
  end


  def new
    @address = Address.new
  end

  def create
    @address = Address.new params[:address].merge(creator_id: @current_user.id)
    @venue   = @address.as_venue
    if @venue.blank?
      render :new
    else
      @venue.save!
      redirect_to venues_path
    end
  end


  # need something like this...
  # def create
  #   create new venue
  #   geocode the address
  # end

end