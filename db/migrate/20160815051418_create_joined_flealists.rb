class CreateJoinedFlealists < ActiveRecord::Migration
  def change
    create_table :joined_flealists do |t|

      #참여했던 마켓 플리 번호
      t.integer :flea_id
      #누구에 속하는 리스트인지
      t.string :user_id

      t.timestamps null: false
    end
  end
end
