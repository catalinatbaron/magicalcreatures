class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @creature = Creature.find(params[:creature_id])
    @booking.creature = @creature
    @booking.user_id = current_user.id
    @booking.save
    redirect_to booking_path(@booking)
  end


  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :creature_id, :user_id)
  end

end
