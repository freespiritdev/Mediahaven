class AddSlugToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :slug, :string
    add_index :tunes, :slug
  end
end
