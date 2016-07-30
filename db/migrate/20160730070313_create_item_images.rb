class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|

      # 아이템 사진
      t.string :url
      t.timestamps null: false
    end
  end
end
