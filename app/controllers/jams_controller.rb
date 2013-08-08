class JamsController < ApplicationController
  def index
    @jams = Jam.all
  end

  def join
  end

  def start
  end
end