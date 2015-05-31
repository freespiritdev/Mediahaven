class CreateReviewtvs < ActiveRecord::Migration
  def change
    create_table :reviewtvs do |t|
      t.text :comment

      t.timestamps
    end
  end
end
