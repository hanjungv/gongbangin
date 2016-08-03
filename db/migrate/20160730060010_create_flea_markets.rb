class CreateFleaMarkets < ActiveRecord::Migration
  def change
    create_table :flea_markets do |t|

      # 모집기간
      t.string :application_period
      # 모집인원
      t.integer :number_of_recruitment
      # 비고
      t.string :remark
      # 장소
      t.string :place
      # 행사날짜
      t.string :event_date
      # 참가비
      t.integer :entrance_fee

      t.timestamps null: false
    end
  end

end
