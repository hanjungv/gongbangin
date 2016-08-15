class CreateFleas < ActiveRecord::Migration
  def change
    create_table :fleas do |t|
      # 플리마켓 이름
      t.string :market_name
      # 모집 시작기간
      t.datetime :application_start_period
      # 모집 종료기간
      t.datetime :application_end_period
      # 모집인원
      t.integer :number_of_recruitment
      # 비고
      t.string :remark
      # 지역(서울 - 인천 - 경기 - 경북 - 경남 - 충북 - 충남 - 전북 - 전남 - 제주 )
      t.string :city_place
      # 상세장소
      t.string :detail_place
      # 행사날짜
      t.datetime :event_start_date
      # 행사끝날짜
      t.datetime :event_end_date
      # 참가비
      t.integer :entrance_fee

      t.timestamps null: false
    end
  end
end
