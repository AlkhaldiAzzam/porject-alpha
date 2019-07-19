class DashboardsController < ApplicationController
  def index
    @films = Film.all
  end
end
