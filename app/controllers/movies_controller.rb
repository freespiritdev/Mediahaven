class MoviesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @movies = Movie.all 
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: 'Movie Added!'
    else
      render action: 'new'
    end
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to movies_path, notice: 'Movie successfully updated.'
    else
      render action: 'edit'
    end
  end


  def edit
  end
  
  def destroy
    @movie = Movie.find(params[:id])
    title = @movie.title

    if @movie.destroy
      redirect_to @movie
    else
      render :show
    end
  end
 
   private
   def movie_params
     params.require(:movie).permit(:title)
   end
end
