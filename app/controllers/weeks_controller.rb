class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]


  def index
    @weeks = Week.all

    if @weeks.count == 0
      @week = Week.new
      @week.save
    end
  end

  def create
    @week = Week.new
    @week.save
    redirect_to weeks_path
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy

    redirect_to weeks_path
  end

  private
    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params.fetch(:week, {})
    end
end
