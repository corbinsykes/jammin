class JamsController < ApplicationController
  def index
    @jams = Jam.all
    respond_to do|format|
      format.html
      format.json {render json: @jams}
    end
  end

  def join
  end

  def start
  end
end