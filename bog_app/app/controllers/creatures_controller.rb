class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    render :new
  end

  def create
    Creature.create(creature_params)
    redirect_to creatures_path
  end

  def show
    @creature = Creature.find_by_id params[:id] 
    render :show
  end

private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
