class SearchController < ApplicationController
  def index
    if params[:store]
      @films = Film.where('film LIKE ?', "%#{params[:search]}%")
    else
      @films = Film.all
    end
  end
end
