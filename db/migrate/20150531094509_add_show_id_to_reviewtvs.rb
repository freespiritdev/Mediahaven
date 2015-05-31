class AddShowIdToReviewtvs < ActiveRecord::Migration
  def change
    add_column :reviewtvs, :show_id, :integer
  end
end
