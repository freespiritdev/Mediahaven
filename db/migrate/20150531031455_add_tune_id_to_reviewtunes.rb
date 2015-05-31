class AddTuneIdToReviewtunes < ActiveRecord::Migration
  def change
    add_column :reviewtunes, :tune_id, :integer
  end
end
