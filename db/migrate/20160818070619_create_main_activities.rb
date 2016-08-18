class CreateMainActivities < ActiveRecord::Migration
  def change
    create_table :main_activities do |t|

      #주 활동분야
      t.string :name
      #기타를 선택했을경우
      t.string :etc_name, default:""
      #design, make
      t.string :skill_part
      #skill_part
      t.string :etc_part,default:""
      #퍼센테이지
      t.integer :percentage, default:0
      #속하는 유저
      t.integer :user_id


      t.timestamps null: false
    end
  end
end
