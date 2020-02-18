class BookingsController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
    @bookings = curren.user.bookings
    @birds = @bookings.birds
    raise
  end
end
