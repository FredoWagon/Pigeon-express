class BirdsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @birds = Bird.all

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
end
