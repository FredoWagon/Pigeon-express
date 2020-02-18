class BirdsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end
end
