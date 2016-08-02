class CreateLikeFleaMarkets < ActiveRecord::Migration
  def change
    create_table :like_flea_markets do |t|

      t.references :user, index: true, foreign_key: true
      t.references :flea, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
