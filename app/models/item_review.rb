class ItemReview < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  has_many :item_review_replies, through: :users
end
