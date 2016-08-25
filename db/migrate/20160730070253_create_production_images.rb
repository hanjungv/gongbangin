class CreateProductionImages < ActiveRecord::Migration
  def change
    create_table :production_images do |t|
    #create_table "production_images", force: :cascade do |t|

      # 아이템 제작 과정 사진
      t.text :image
      # 아이템 제작 과정 단계의 설명
      t.text :process
      t.integer :item_id

      t.timestamps null: false

      #mount_uploader :image, TinymceS3ImageUploader

    end
  end
end
