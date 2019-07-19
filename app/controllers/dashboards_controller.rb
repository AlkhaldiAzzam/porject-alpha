class DashboardsController < ApplicationController
  def index
    @films = Film.all
    @games = Game.all
  end
end
