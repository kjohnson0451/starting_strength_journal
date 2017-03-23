class RoutinesController < ApplicationController

  def show
    @routine = Routine.find(1)
  end
end
