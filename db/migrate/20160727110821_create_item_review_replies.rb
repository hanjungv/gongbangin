class CreateItemReviewReplies < ActiveRecord::Migration
  def change
    create_table :item_review_replies do |t|

      t.timestamps null: false
    end
  end
end
