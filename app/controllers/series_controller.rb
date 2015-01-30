class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

   def create
    @serie = Serie.new(params[:serie])

    if @serie.save
      redirect_to series_path, notice: 'Show Added!'
    else
      render 'new'
    end
  end

  def update
    @serie = Serie.find(params[:serie])
    if @serie.update(serie_params)
      redirect_to @serie, notice: 'TV Show successfully updated.'
    else
      render action: 'edit'
    end
  end

  def edit
  end

  def show
  end
end
