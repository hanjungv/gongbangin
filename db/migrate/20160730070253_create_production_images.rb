class CreateProductionImages < ActiveRecord::Migration
  def change
    create_table :production_images do |t|

      t.string :url
      t.string :process

      t.timestamps null: false
    end
  end
end
