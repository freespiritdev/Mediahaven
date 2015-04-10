class AddSlugToShows < ActiveRecord::Migration
  def change
    add_column :shows, :slug, :string
    add_index :shows, :slug
  end
end
