class RoutinesController < ApplicationController

  def show
    @routine = Routine.find(1)
  end

  def update
    @routine = Routine.find(1)

    @routine.update(routine_params)

    redirect_to root_path
  end

  private
  def routine_params
    params.require(:routine).permit(exercises_attributes: [:id, :load])
  end
end
