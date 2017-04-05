class RoutinesController < ApplicationController
  before_action :set_routine, only: [:show, :update]

  def show
  end

  def update
    @routine.update(routine_params)

    redirect_to root_path
  end

  private
  def set_routine
    if user_signed_in?
      @routine = current_user.routine
    else
      @routine = Routine.find(1)
    end
  end

  def routine_params
    params.require(:routine).permit(exercises_attributes: [:id, :load])
  end
end
