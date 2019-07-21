class DashboardsController < ApplicationController
  def index
    if user_signed_in?
      # debug
    films = User.find_by(username: params[:user_id]).films_id

    @films = []

    films.each{|elem| @films.push(Film.find(elem))}




    



    games = User.find_by(username: params[:user_id]).games_id

    @games = []

    games.each{|elem| @games.push(Game.find(elem))}




    


    animes = User.find_by(username: params[:user_id]).animes_id

    @animes = []

    animes.each{|elem| @animes.push(Anime.find(elem))}






    tv_shows = User.find_by(username: params[:user_id]).TvShows_id

    @tv_shows = []

    tv_shows.each{|elem| @tv_shows.push(TvShow.find(elem))}


    
    end
  end
end
