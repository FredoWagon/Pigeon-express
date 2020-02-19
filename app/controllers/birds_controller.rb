class BirdsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @birds = Bird.all

    @birds_geo = Bird.geocoded #returns birds with coordinates

    @markers = @birds_geo.map do |bird|
      {
        lat: bird.latitude,
        lng: bird.longitude
      }
    end
  end

  def show
    @bird = Bird.find(params[:id])
  end
end
