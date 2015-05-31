class AddUserIdToReviewtvs < ActiveRecord::Migration
  def change
    add_column :reviewtvs, :user_id, :integer
  end
end
