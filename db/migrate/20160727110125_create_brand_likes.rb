class CreateBrandLikes < ActiveRecord::Migration
  def change
    create_table :brand_likes do |t|

      t.timestamps null: false
    end
  end
end
