class AnimesController < ApplicationController
  
  before_action :authenticate_user!


  def index
    @animes = Anime.all
  end

  def show
    @anime = Anime.find(params[:id])

  end

  def new
    @anime = Anime.new
  end

  def edit
    @anime = Anime.find(params[:id])

  end

  def create
   
    found = false
    @anime = Anime.new(anime_params)

    Anime.all.each do |anime|
      if anime.title == @anime.title
        found = true


      
    end
  end

if found == false

    respond_to do |format|
      if @anime.save
        format.html { redirect_to @anime, notice: 'anime was successfully created.' }
        format.json { render :show, status: :created, location: @anime }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
    @user = current_user
    @user.animes_id.push(@anime.id.to_s)
    @user.save

  else 
    redirect_to @anime, notice: 'anime was successfully created.'
    

    @user = current_user
    @user.animes_id.push(Anime.find_by_title(@anime.title).id.to_s)
    @user.save
    
  end


  end
  def update
    respond_to do |format|
      if @anime.update(anime_params)
        format.html { redirect_to @anime, notice: 'anime was successfully updated.' }
        format.json { render :show, status: :ok, location: @anime }
      else
        format.html { render :edit }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @anime = Anime.find(params[:id])
  user = current_user
  user.animes_id.delete(@anime.id)
  user.save
    respond_to do |format|
      format.html { redirect_to animes_url, notice: 'anime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_anime
    @anime = Anime.find(params[:id])
  end

  def anime_params
    params.require(:anime).permit(:title, :plot, :user_id , :rating , :poster , :trailer, :imdb_link )
  end
end
