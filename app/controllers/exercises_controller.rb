class ExercisesController < ApplicationController

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)

    redirect_to root_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:load)
  end
end
