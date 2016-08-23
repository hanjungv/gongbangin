class CreateFleaSellers < ActiveRecord::Migration
  def change
    create_table :flea_sellers do |t|

      # 지원자이름
      t.integer :user_id
      # 지원한 플리마켓
      t.integer :flea_id
      # 지원자 이메일
      t.string :user_email
      # 지원자 이름
      t.string :user_name
      # 지원자 티어
      t.string :user_tier
      # 심사결과
      t.text :review
      # 심사결과 점수
      t.integer :score, default:0

      t.timestamps null: false
    end
  end
end
