class HomesController < ApplicationController
  before_action :set_params, only: %i[show eidt update destroy]

  def new
    @home = Home.new
    @home.near_stations.build
  end

  def create
    if Home.create(home_params)
      redirect_to homes_path
    else
      render 'new'
    end
  end

  def index
    @homes = Home.all
  end

  def show
    @near_stations = @home.near_stations
  end

  def edit
    @near_stations = @home.near_stations
  end

  def update
    if @home.update(update_params)
      redirect_to homes_path
    else
      render 'edit'
    end
  end

  def destroy
    @home.destroy
      redirect_to homes_path
  end

  private

  def set_home
    @home = Home.find(params[:id])
  end

  def home_params
    params.require(:home).permit(:name, :price, :address, :year, :comment, near_stations_attributes: [:line, :station, :minute_walk])
  end

  def update_params
    params.require(:home).permit(:name, :price, :address, :year, :comment, near_stations_attributes:
                                [:line, :station, :minute_walk, :_destroy, :id])
  end
end
