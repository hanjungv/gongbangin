class ItemCommentReply < ActiveRecord::Base
  belongs_to :item_comment
  belongs_to :user
end
