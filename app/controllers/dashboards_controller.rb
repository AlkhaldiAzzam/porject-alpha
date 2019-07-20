class DashboardsController < ApplicationController
  def index
    if user_signed_in?
    films = User.find(current_user.id).films_id

    @films = []

    films.each{|elem| @films.push(Film.find(elem))}




    



    games = User.find(current_user.id).games_id

    @games = []

    games.each{|elem| @games.push(Game.find(elem))}




    


    animes = User.find(current_user.id).animes_id

    @animes = []

    animes.each{|elem| @animes.push(Anime.find(elem))}






    tv_shows = User.find(current_user.id).TvShows_id

    @tv_shows = []

    tv_shows.each{|elem| @tv_shows.push(TvShow.find(elem))}


    
    end
  end
end
