class AddUserIdToReviewtunes < ActiveRecord::Migration
  def change
    add_column :reviewtunes, :user_id, :integer
  end
end
