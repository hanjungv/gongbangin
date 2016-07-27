class CreateItemReviews < ActiveRecord::Migration
  def change
    create_table :item_reviews do |t|

      t.timestamps null: false
    end
  end
end
