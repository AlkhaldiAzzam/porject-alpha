class FilmsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @film = Film.new
  end

  def edit
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

  private

  def film_params
    params.require(:film).permit(:title, :plot, :user_id , :rating , :poster , :trailer )
  end

end
