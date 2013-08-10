class JamsController < ApplicationController
  respond_to :json, only: [:create, :update]
  respond_to :html, only: [:index, :start, :join]

  def index
    @jams = Jam.all
    respond_to do|format|
      format.html
      format.json {render json: @jams}
    end
  end
  def update
    @jam = Jam.find(params[:id])
    @jam.musicians << current_user unless @jam.musicians.include?(current_user)
    if @jam.save!
      render json: @jam.to_json
    else
      response.status = 422
      error = {
        model: @jam,
        messages: @jam.errors.full_messages
      }
      render json: error
    end
  end

  def create
    @jam = Jam.new(params[:jam].merge(creator_id: @current_user.id))
    if @jam.save!
      render json: @jam.to_json
    else
      response.status = 422
      error = {
        model: @jam,
        messages: @jam.errors.full_messages
      }
      render json: error
    end
  end

  def join
    @jams = Venue.find(params[:venue_id]).jams
    render 'join', layout: false
  end

  def start
    @jam = Jam.new
    @instruments = Instrument.all
    @venues = Venue.all
    render 'start', layout: false
  end


end