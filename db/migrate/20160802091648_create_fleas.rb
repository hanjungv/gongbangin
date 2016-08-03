class CreateFleas < ActiveRecord::Migration
  def change
    create_table :fleas do |t|

      # 모집기간
      t.string :application_period
      # 모집인원
      t.integer :number_of_recruitment
      # 비고
      t.string :remark
      # 장소
      t.string :place
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
