class FilmsController < ApplicationController

  before_action :authenticate_user!


  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])

  end

  def new
    @film = Film.new
  end

  def edit
    @film = Film.find(params[:id])

  end

  def create
    found = false
    @film = Film.new(film_params)

    Film.all.each do |film|
      if film.title == @film.title
        found = true


      
    end
  end

if found == false

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
    @user = current_user
    @user.films_id.push(@film.id.to_s)
    @user.save

  else 
    redirect_to @film, notice: 'film was successfully created.'
    

    @user = current_user
    @user.films_id.push(Film.find_by_title(@film.title).id.to_s)
    @user.save
    
  end
  
end
  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'film was successfully updated.' }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @film = Film.find(params[:id])
  user = current_user
  user.films_id.delete(@film.id)
  user.save
    respond_to do |format|
      format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :plot, :user_id , :rating , :poster , :trailer, :imdb_link )
  end

end
