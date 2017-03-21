class ExercisesController < ApplicationController

  def show
    @exercise = Exercise.find(params[:id])
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)

    redirect_to weeks_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:load)
  end
end
