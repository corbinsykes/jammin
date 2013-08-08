class WelcomeController < ApplicationController

  def index
    @musicians = Musician.all
  end

  def about
  end
end