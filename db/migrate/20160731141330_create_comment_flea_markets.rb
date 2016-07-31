class CreateCommentFleaMarkets < ActiveRecord::Migration
  def change
    create_table :comment_flea_markets do |t|

      t.timestamps null: false
    end
  end
end
