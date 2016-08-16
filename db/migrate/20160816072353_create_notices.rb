class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|

      #공지제목
      t.string :title
      #공지내용
      t.string :content
      #들어갈사진
      t.string :url
      #조회수
      t.integer :view_count, default:0

      t.timestamps null: false
    end
  end
end
