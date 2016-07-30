class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|

      t.string :url

      t.timestamps null: false
    end
  end
end
