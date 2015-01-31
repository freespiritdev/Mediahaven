class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
