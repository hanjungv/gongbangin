class CreateRecommentFleaMarkets < ActiveRecord::Migration
  def change
    create_table :recomment_flea_markets do |t|

      t.timestamps null: false
    end
  end
end
