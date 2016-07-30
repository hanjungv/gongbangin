class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|

      # item image url
      t.string :url

      t.timestamps null: false
    end
  end
end
