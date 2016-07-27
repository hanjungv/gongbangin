class CreateItemCommentReplies < ActiveRecord::Migration
  def change
    create_table :item_comment_replies do |t|

      t.timestamps null: false
    end
  end
end
