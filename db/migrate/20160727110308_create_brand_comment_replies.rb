class CreateBrandCommentReplies < ActiveRecord::Migration
  def change
    create_table :brand_comment_replies do |t|

      t.timestamps null: false
    end
  end
end
