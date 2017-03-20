class ExercisesController < ApplicationController

  def show
    @exercise = Exercise.find(params[:id])
  end
  
  def edit
    @exercise = Exercise.find(params[:id])    
  end

  def update
    logger.debug("Update starting")
    
    #@exercise = Exercise.find(params[:id])    
    
    #if @exercise.update(exercise_params)
    #  logger.debug("It worked")
    #else
    #  logger.debug("It didn't work")
    #end
    Exercise.update(1, :load => 100)

    logger.debug("Update ending")
    
    redirect_to weeks_path
    
  end

  private
  def exercise_params
    params.require(:exercise).permit(:load)
  end
end
