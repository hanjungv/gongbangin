class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      # 아이템 이름
      t.string :name
      # 아이템 가격
      t.integer :price
      # 아이템 원재료
      t.string :material
      # 제작 기간
      t.string :period
      #id 부여
      t.integer :user_id
      # 사진 메인 이미지
      t.string :url

      t.timestamps null: false
    end
  end
end
