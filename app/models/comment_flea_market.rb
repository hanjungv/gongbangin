# 플리마켓 댓글
class CommentFleaMarket < ActiveRecord::Base
  belongs_to :user
  belongs_to :flea
  has_many :recomment_flea_markets
end
