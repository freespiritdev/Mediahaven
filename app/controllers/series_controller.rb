class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def edit
  end

  def show
  end
end
