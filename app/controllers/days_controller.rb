class DaysController < ApplicationController
  def show
    @week = Week.find(params[:week_id])    
    @day = @week.days.find(params[:id])
  end
end
