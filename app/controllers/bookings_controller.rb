class BookingsController < ApplicationController

before_action :set_bird, only: [:new, :create]
before_action :set_bird_bookings, only: [:create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bird_id = @bird.id
    @booking.user_id = current_user.id
    if (@range).include?(@booking.start_date || @booking.end_date)
      @error = true
      render :new
    else
      if @booking.save
        redirect_to bookings_path
      else
        render :new
      end
    end
  end

  def index
  end

  def show
  end

  private

  def set_bird
    @bird = Bird.find(params[:bird_id])
  end

  def set_bird_bookings
    @bird.bookings.each do |booking|
      start_date = booking.start_date
      end_date = booking.end_date
      @range = (start_date..end_date)
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
