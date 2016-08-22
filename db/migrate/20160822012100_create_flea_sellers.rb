class CreateFleaSellers < ActiveRecord::Migration
  def change
    create_table :flea_sellers do |t|

      t.integer :user_id
      t.integer :flea_id
      t.integer :score, default:0

      t.timestamps null: false
    end
  end
end
