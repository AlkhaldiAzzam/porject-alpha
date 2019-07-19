class TvShowsController < ApplicationController
 
  before_action :authenticate_user!


  def index
    @tv_shows = TvShow.all
  end

  def show
    @tv_show = TvShow.find(params[:id])

  end

  def new
    @tv_show = TvShow.new
  end

  def edit
    @tv_show = TvShow.find(params[:id])

  end

  def create
    @tv_show = TvShow.new(tv_show_params)

    respond_to do |format|
      if @tv_show.save
        format.html { redirect_to @tv_show, notice: 'tv_show was successfully created.' }
        format.json { render :show, status: :created, location: @tv_show }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end

  end
  def update
    respond_to do |format|
      if @tv_show.update(tv_show_params)
        format.html { redirect_to @tv_show, notice: 'tv_show was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_show }
      else
        format.html { render :edit }
        format.json { render json: @tv_show.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tv_show = tv_show.find(params[:id])
    @tv_show.destroy
    respond_to do |format|
      format.html { redirect_to tv_shows_url, notice: 'tv_show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_tv_show
    @tv_show = tv_show.find(params[:id])
  end

  def tv_show_params
    params.require(:tv_show).permit(:title, :plot, :user_id , :rating , :poster , :trailer, :imdb_link )
  end
end
