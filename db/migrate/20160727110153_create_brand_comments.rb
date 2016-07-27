class CreateBrandComments < ActiveRecord::Migration
  def change
    create_table :brand_comments do |t|

      t.timestamps null: false
    end
  end
end
