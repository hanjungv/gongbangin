class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|

      # 카테고리 종류
      t.string :name
      t.timestamps null: false
    end
  end
end
