class CreateReviewtunes < ActiveRecord::Migration
  def change
    create_table :reviewtunes do |t|
      t.text :comment

      t.timestamps
    end
  end
end
