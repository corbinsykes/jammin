class MusiciansController < ApplicationController
  skip_before_filter :check_authentication, only: [:new, :create]


  def index
    @musicians = Musician.all
    respond_to do|format|
      format.html
      format.json {render json: @musicians}
    end

  end

  def new
    @musician = Musician.new
    @instruments = Instrument.all
  end

  def create
    @musician = Musician.new(params[:musician])
    if @musician.save
      auto_login @musician  #autologin is a sorcery method that keeps player logged in
      redirect_to musician_path (current_user.id), :notice => "Signed up!"
    else
      render "new"
    end
  end

  def show
    @musician = Musician.find(params[:id])
  end
end