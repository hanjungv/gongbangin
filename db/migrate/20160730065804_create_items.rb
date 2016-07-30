class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :name
      t.integer :price
      t.string :material

      t.timestamps null: false
    end
  end
end
