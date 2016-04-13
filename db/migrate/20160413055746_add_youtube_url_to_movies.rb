class AddYoutubeUrlToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :youtube_url, :string
  end
end
