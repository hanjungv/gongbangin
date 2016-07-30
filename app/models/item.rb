class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_images
  has_many :production_images
  belongs_to :category
end
