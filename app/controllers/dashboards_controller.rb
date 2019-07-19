class DashboardsController < ApplicationController
  def index
    if user_signed_in?
    @films = User.find(current_user.id).films.all
    @games = User.find(current_user.id).games.all
    @animes = User.find(current_user.id).animes.all
    @tv_shows = User.find(current_user.id).tv_shows.all
    end
  end
end
