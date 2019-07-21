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
    found = false
    @tv_show = TvShow.new(tv_show_params)

    TvShow.all.each do |tv_show|
      if tv_show.title == @tv_show.title
        found = true


      
    end
  end

if found == false

    respond_to do |format|
      if @tv_show.save
        format.html { redirect_to user_dashboards_path(current_user.username), notice: 'tv_show was successfully created.' }
        format.json { render :show, status: :created, location: @tv_show }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
    @user = current_user
    @user.TvShows_id.push(@tv_show.id.to_s)
    @user.save

  else 
    redirect_to user_dashboards_path(current_user.username), notice: 'tv_show was successfully created.'
    

    @user = current_user
    @user.TvShows_id.push(TvShow.find_by_title(@tv_show.title).id.to_s)
    @user.save
    
  end
  

  end

  def destroy
    @tv_show = TvShow.find(params[:id])
    user = current_user
    user.TvShows_id.delete(@tv_show.id)
    user.save
      respond_to do |format|
        format.html { redirect_to user_dashboards_path(current_user.username), notice: 'The show was successfully deleted.' }
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
