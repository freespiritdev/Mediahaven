class TunesController < ApplicationController
  before_action :set_tune, only: [:show,:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tunes = Tune.all
  end

  def new
    @tune = current_user.tunes.build
  end

  def edit
    @tune = Tune.find(params[:id])
  end

  def show
  end

  def create
    @tune = current_user.tunes.build(tune_params)
    if @tune.save
      redirect_to @tune, notice: 'New Music Added!'
    else
      render action: 'new'
    end
  end
  
  def update
    @tune = Tune.find(params[:id])
    if @tune.update(tune_params)
      redirect_to @tune, notice: 'Music successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @tune = Tune.find(params[:id])
    title = @tune.title

    if @tune.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to @tune
    else
      flash[:error] = "There was an error deleting the movie."
      render :show
    end
  end

private
  def set_tune
    @tune = Tune.find(params[:id])
  end

  def tune_params
    params.require(:tune).permit(:title, :image)
  end
end


