class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def new
    @series = current_user.series.build
  end

  def edit
    @series = Series.find(params[:id])
  end

  def show
  end
end
