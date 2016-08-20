class CreateUserPrizes < ActiveRecord::Migration
  def change
    create_table :user_prizes do |t|

      #상 이름
      t.string :prize_name
      #대회이름
      t.string :contest_name
      #상 받은 날짜
      t.datetime :prize_date
      #속하는 유저
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
