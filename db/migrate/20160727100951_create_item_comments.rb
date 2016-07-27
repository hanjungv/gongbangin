class CreateItemComments < ActiveRecord::Migration
  def change
    create_table :item_comments do |t|

      t.timestamps null: false
    end
  end
end
