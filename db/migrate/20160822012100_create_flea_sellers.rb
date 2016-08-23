class CreateFleaSellers < ActiveRecord::Migration
  def change
    create_table :flea_sellers do |t|

      t.integer :user_id
      t.integer :flea_id
      t.string :user_email
      t.string :user_name
      t.string :user_tier
      t.text :review
      t.integer :score, default:0

      t.timestamps null: false
    end
  end
end
