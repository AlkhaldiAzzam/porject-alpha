class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
   
    found = false
    @game = Game.new(game_params)

    Game.all.each do |game|
      if game.title == @game.title
        found = true


      
    end
  end

if found == false

    respond_to do |format|
      if @game.save
        format.html { redirect_to user_dashboards_path(current_user.username), notice: 'game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
    @user = current_user
    @user.games_id.push(@game.id.to_s)
    @user.save

  else 
    redirect_to dashboards_path, notice: 'game was successfully created.'
    

    @user = current_user
    @user.games_id.push(Game.find_by_title(@game.title).id.to_s)
    @user.save
    
  end

  end



  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to user_dashboards_path(current_user.username), notice: 'game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @game = Game.find(params[:id])
  user = current_user
  user.games_id.delete(@game.id)
  user.save
    respond_to do |format|
      format.html { redirect_to user_dashboards_path(current_user.username), notice: 'game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :plot , :rating , :poster , :trailer, :imdb_link )
  end

end
