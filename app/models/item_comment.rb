class ItemComment < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  has_many :item_comment_replies, through: :users
end
