class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand
  has_many :purchases, through: :users
  has_many :item_comments, through: :users
  has_many :item_reviews, through: :users
  has_many :reservations, through: :users
end
