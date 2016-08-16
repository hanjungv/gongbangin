class CreateFleas < ActiveRecord::Migration
  def change
    create_table :fleas do |t|

      # 이름
      t.string :name
      # 모집 시작날짜
      t.date :application_start_date
      # 모집 종료날짜
      t.date :application_end_date
      # 모집인원
      t.integer :number_of_recruitment
      # 비고
      t.string :remark
      # 지역(서울 - 인천 - 경기 - 경북 - 경남 - 충북 - 충남 - 전북 - 전남 - 제주 )
      t.string :city_place
      # 상세장소
      t.string :detail_place
      # 행사 시작날짜
      t.date :event_start_date
      # 행사 종료날짜
      t.date :event_end_date
      # 참가비
      t.integer :entrance_fee

      t.timestamps null: false
    end
  end
end
