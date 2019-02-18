class CreaturesController < ApplicationController
  def index
    @creature = policy_scope(Creature).order(created_at: :desc)
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])

    @bookings = Booking.where(id: @creature.bookings)
    @reviews = []

    @bookings.each do |booking|
      unless booking.review_id.nil?
        @reviews << Review.find(booking.review_id)
      end
    end

    authorize @creature
  end

  def new
    # @user = current_user.id
    @creature = Creature.new
    authorize @creature
  end

  def create
    # @creature = authorize(Creature)
    @creature = Creature.new(params_creature)
    authorize @creature
    @creature.user = current_user
    @creature.save
    redirect_to creature_path(@creature)
  end

  def edit
    @creature = Creature.find(params[:id])
    authorize @creature
  end

  def update
    @creature = Creature.find(params[:id])
    authorize @creature
    @creature.update(params_creature)
    redirect_to creature_path(@creature)
  end

  def destroy
    @creature = Creature.find(params[:id])
    authorize @creature
    @creature.destroy
    redirect_to creatures_path
  end

  def my_creatures
    @creatures = Creature.where(user_id: current_user.id)
    authorize @creatures
  end

  private

  def params_creature
    params.require(:creature).permit(:name, :super_power, :description, :price)
  end
end
