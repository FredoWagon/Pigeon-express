class BirdsController < ApplicationController
  # before_action :set_bird, only: [:show]

  def index
  end

  def show
  end

  private

  def set_bird
    @bird = Bird.find(params[:id])
  end
end
