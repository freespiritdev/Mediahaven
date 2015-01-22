class MoviesController < ApplicationController

  def index
    @movies = Movie.all 
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: 'Movie Added!'
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  private

   def movie_params
     params.require(:movie).permit(:title, :image)
   end
end
