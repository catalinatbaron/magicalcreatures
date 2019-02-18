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

  def edit
    @booking = Booking.find(params[:id])
    @creature = Creature.find(params[:creature_id])
  end

  def update
    @creature = Creature.find(params[:creature_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @creature = Creature.find(@booking.creature.id)
    @booking.destroy
    redirect_to creature_path(@creature)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :creature_id, :user_id)
  end

end
