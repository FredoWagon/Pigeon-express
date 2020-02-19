class BookingsController < ApplicationController

before_action :set_bird, only: [:new, :create]
before_action :set_bird_bookings, only: [:create]

  def index
    @user= current_user
    @bookings = @user.bookings
  end

  def show
    @bookings = current.user.bookings
  end

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
      end_date
      end
    end
  end


    def edit
      @booking = Booking.find(params[:id])
    end

    def update

    end

    def destroy

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
