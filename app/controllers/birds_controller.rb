class BirdsController < ApplicationController
  def index
  end

  def show
    @bird = Bird.find(params[:id])
  end
end
