class CreateProductionImages < ActiveRecord::Migration
  def change
    create_table :production_images do |t|

      # 아이템 제작 과정 사진
      t.string :url
      # 아이템 제작 과정 단계의 설명
      t.text :process
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
