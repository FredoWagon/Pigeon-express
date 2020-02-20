class BirdsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @birds = Bird.all
    if params[:query].present?
      @birds = @birds.search_by_name_or_species(params[:query].capitalize)
    end

    @birds_geo = Bird.geocoded #returns birds with coordinates

    @markers = @birds_geo.map do |bird|
      {
        lat: bird.latitude,
        lng: bird.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bird: bird })
      }
    end
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
    params.require(:bird).permit(:category, :name, :species, :range, :price, :photo, :address)
  end
end
