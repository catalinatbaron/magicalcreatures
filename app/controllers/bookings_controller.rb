class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @creature = Creature.find(params[:creature_id])
    @booking.creature = @creature
    @booking.user_id = current_user.id
    if @booking.valid?
      @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    @creature = Creature.find(@booking.creature.id)
    authorize @booking
  end

  def update
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @creature = Creature.find(@booking.creature.id)
    authorize @booking
    @booking.destroy
    @bookings = Booking.all
    redirect_to my_bookings_bookings_path(@bookings[0])
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
    authorize @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :creature_id, :user_id, :review_id)
  end
end
