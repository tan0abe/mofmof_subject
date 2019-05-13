class HomesController < ApplicationController
  before_action :set_params, only: %i[show eidt update destroy]

  def new
    @home = Home.new
  end

  def create
    if Home.create
      redirect_to homes_path
    else
      render 'new'
    end
  end

  def index
    @homes = Home.all
  end

  def show
    
  end

  def edit
    
  end

  def confirm

  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_params
    @home = Home.find(params[:id])
  end
end
