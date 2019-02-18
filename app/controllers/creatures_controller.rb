class CreaturesController < ApplicationController
  def index
    @creature = policy_scope(Creature).order(created_at: :desc)
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
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

  private

  def params_creature
    params.require(:creature).permit(:name, :super_power, :description, :price)
  end
end
