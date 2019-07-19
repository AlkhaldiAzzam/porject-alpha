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
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
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
    @film.destroy
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
