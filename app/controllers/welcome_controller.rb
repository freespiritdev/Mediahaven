class WelcomeController < ApplicationController
  def index
    @movies = Movie.order('Created_at asc')
    @shows = Show.order('Created_at asc')
    @tunes = Tune.order('Created_at asc')
  
  end

  def about
  end

  def movie_params
     params.require(:movie).permit(:title, :image)
   end

   def show_params
     params.require(:show).permit(:title, :image)
  end

end
