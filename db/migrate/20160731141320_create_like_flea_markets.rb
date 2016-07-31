class CreateLikeFleaMarkets < ActiveRecord::Migration
  def change
    create_table :like_flea_markets do |t|

      t.timestamps null: false
    end
  end
end
