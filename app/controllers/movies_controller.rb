class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @movies = Movie.all 
  end

  def new
    @movie = current_user.movies.build
  end

  def create
    @movie = current_user.movies.build(movie_params)

    if @movie.save
      redirect_to movies_path, notice: 'Movie Added!'
    else
      render 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie successfully updated.'
    else
      render action: 'edit'
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
