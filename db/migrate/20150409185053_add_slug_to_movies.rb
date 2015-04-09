class AddSlugToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :slug, :string
    add_index :movies, :slug
  end
end
