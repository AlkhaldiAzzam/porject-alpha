class ExploreController < ApplicationController
  def index
    @films = Film.all
    @games = Game.all
    @animes = Anime.all
    @tv_shows = TvShow.all

    @user = current_user


    
  end


  def add_film
    user = current_user
    user.films_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_index_path	, notice: 'film was successfully added.'
  end

  def add_game
    user = current_user
    user.games_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_index_path	, notice: 'game was successfully added.'
  end

  def add_anime
    user = current_user
    user.animes_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_index_path	, notice: 'anime was successfully added.'
  end


  def add_show
    user = current_user
    user.TvShows_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_index_path	, notice: 'show was successfully added.'
  end




end
