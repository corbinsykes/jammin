class WelcomeController < ApplicationController

  def index
    @musicians = Musician.all
  end
end