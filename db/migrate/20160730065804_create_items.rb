class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      # 아이템 이름
      t.string :name
      # 아이템 가격
      t.integer :price
      # 아이템 원재료
      t.string :material

      t.timestamps null: false
    end
  end
end
