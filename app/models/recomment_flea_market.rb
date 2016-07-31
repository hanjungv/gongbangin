# 플리마켓 리댓글
class RecommentFleaMarket < ActiveRecord::Base
  belongs_to :comment_flea_market
  belongs_to :user
end
