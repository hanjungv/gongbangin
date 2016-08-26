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
      # 포스터 주소
      t.string :poster_url,  default: "gangposter.png"
      # 속하는 유저 번호(누가 만들었나)
      t.integer :user_id

      # 선착순? 심사?(judge - FIFO)
      t.string :join_type
      # 현재 몇명 지원했는지
      t.integer :join_member, default:0
      # 선택된 인원
      t.integer :select_member,default:0
      # 동의사항 입력하기(최대 5개)
      t.string :agree1
      t.string :agree2
      t.string :agree3
      t.string :agree4
      t.string :agree5
      # 최대 몇개의 아이템 지원가능한지(최대 5개)
      t.integer :item_count


      t.timestamps null: false
    end
  end
end
