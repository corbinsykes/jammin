class MusiciansController < ApplicationController
  def index
  end

  def new
    @musician = Musician.new
  end

  def create
  end
end