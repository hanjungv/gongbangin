class CreateFleaMarkets < ActiveRecord::Migration
  def change
    create_table :flea_markets do |t|

      t.string :application_period
      t.integer :number_of_recruitment
      t.string :remark
      t.string :place
      t.string :event_date
      t.string :entrance_fee
      t.timestamps null: false
    end
  end
end
