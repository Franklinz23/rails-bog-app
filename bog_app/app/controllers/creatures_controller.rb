class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    @creature = Creature.create(creature_params)
    render :show
  end

  def show
    @creature = Creature.find(params[:id])
    render :show
  end

  def edit
    @creature = Creature.find_by_id(params[:id])
    render :edit
  end

private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
