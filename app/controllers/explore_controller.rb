class ExploreController < ApplicationController
  def index
    if params[:search]
      @films = Film.where('title ILIKE ?', "%#{params[:search]}%")
    else
      @films = Film.all
    end


    if params[:search]
      @games = Game.where('title ILIKE ?', "%#{params[:search]}%")
    else
      @games = Game.all
    end


    if params[:search]
      @animes = Anime.where('title ILIKE ?', "%#{params[:search]}%")
    else
      @animes = Anime.all
    end
    

     if params[:search]
      @tv_shows = TvShow.where('title ILIKE ?', "%#{params[:search]}%")
    else
      @tv_shows = TvShow.all
    end

    @user = current_user


    
  end


  def add_film
    user = current_user
    user.films_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_path	, notice: 'film was successfully added.'
  end

  def add_game
    user = current_user
    user.games_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_path	, notice: 'game was successfully added.'
  end

  def add_anime
    user = current_user
    user.animes_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_path	, notice: 'anime was successfully added.'
  end


  def add_show
    user = current_user
    user.TvShows_id.push(params[:id].to_i)
    user.save
    
    redirect_to explore_path	, notice: 'show was successfully added.'
  end




end
