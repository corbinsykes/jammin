class MusiciansController < ApplicationController
  def index
    @musicians = Musician.all
  end

  def new
    @musician = Musician.new


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