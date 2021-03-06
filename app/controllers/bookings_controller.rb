class BookingsController < ApplicationController

before_action :set_bird, only: [:new, :create, :edit, :update]
before_action :set_bird_bookings, only: [:create]

  def index
    @user= current_user
    @bookings = @user.bookings
    @birds = Bird.where(@bird == current_user)
    @my_bookings = Booking.where(bird: (Bird.where(user_id: current_user)))
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

    @range = @booking.start_date - @booking.end_date

    if range_validation || in_range_validation
          render 'birds/show'
    elsif @booking.save
        redirect_to bookings_path
    else
      render 'birds/show'
    end
  end

    def edit
      @booking = Booking.find(params[:id])
    end

    def update
      @booking = Booking.find(params[:id])
      @booking.update(booking_params)
      redirect_to bookings_path
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to bookings_path
    end


  private

  def range_validation
    if @ranges != []
      array = []
      @ranges.each do |range|
        array << range.include?(@booking.start_date)
        array << range.include?(@booking.end_date)
      end
      return array.include?(true)
    else
      false
    end
  end

 def in_range_validation
    @booking_range = (@booking.start_date..@booking.end_date)
    array = []
    @ranges.each do |range|
      array << @booking_range.include?(range)
    end
    return array.include?(true)
  end

  def set_bird
    @bird = Bird.find(params[:bird_id])
  end

  def set_bird_bookings
    @ranges = []
    @bird.bookings.each do |booking|
      start_date = booking.start_date
      end_date = booking.end_date
      @ranges << (start_date..end_date)
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
