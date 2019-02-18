class CreaturesController < ApplicationController
  def index

    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
    # @user = current_user.id
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(params_creature)
    @creature.user_id = current_user
    @creature.save
    redirect_to creature_path(@creature)
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def update
    @creature = Creature.find(params[:id])
    @creature.update(params_creature)
    redirect_to creature_path(@creature)
  end

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy
    redirect_to creatures_path
  end

  private

  def params_creature
    params.require(:creature).permit(:name, :super_power, :description, :price)
  end
end
