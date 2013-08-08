class WelcomeController < ApplicationController

  def index
    @musicians = Musician.all

    redirect_to '/log_in'
  end

  def about
  end
end