class BirdsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    @bird.user_id = current_user[:id]
    if @bird.save
      redirect_to birds_path
    else
      render :new
    end
  end


  private

  def bird_params
    params.require(:bird).permit(:category, :name, :species, :range, :price)
  end
end
