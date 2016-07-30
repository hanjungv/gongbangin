class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|

      # 경력
      t.integer :career
      # 가격범위
      t.string :price_range
      # 브랜드 설명
      t.string :brand_introduction
      # 제품 설명
      t.string :item_introduction
      # 자기소개
      t.string :self_introduction
      # 나이
      t.integer :age
      # 참여인원
      t.integer :number_of_participants
      # 브랜드이름
      t.string :brand_name
      # sns 주소
      t.string :sns_url
      t.timestamps null: false
    end
  end
end
