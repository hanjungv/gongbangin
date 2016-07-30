class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|

      t.integer :career
      t.string :price_range
      t.string :brand_introduction
      t.string :item_introduction
      t.string :self_introduction
      t.integer :age
      t.integer :number_of_participants
      t.string :brand_name
      t.string :sns_url
      t.timestamps null: false
    end
  end
end
