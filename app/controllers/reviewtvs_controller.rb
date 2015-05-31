class ReviewtvsController < ApplicationController
  before_action :set_reviewtv, only: [:show, :edit, :update, :destroy]
  before_action :set_show
  before_action :authenticate_user!

  def new
    @reviewtv = Reviewtv.new
  end

  def edit
  end

  def create
    @reviewtv = Reviewtv.new(reviewtv_params)
    @reviewtv.user_id = current_user.id
    @reviewtv.show_id = @show.id
   
    if @reviewtv.save
      redirect_to @show
    else
      render 'new'
    end  
  end

  def update
    @reviewtv.update(reviewtv_params)
  end

  def destroy
    @reviewtv.destroy
    redirect_to root_path
  end

private
  def set_reviewtv
    @reviewtv = Reviewtv.find(params[:id])
  end

  def set_show
    @show = Show.find(params[:show_id])
  end

  def reviewtv_params
    params.require(:reviewtv).permit(:comment)
  end
end
