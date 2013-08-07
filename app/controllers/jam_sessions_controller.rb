class Jam_SessionsController < ApplicationController
  def index
    @jam_sessions = JamSession.all
  end
end