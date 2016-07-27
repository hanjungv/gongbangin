class ItemReviewReply < ActiveRecord::Base
  belongs_to :item_review
  belongs_to :user
end
