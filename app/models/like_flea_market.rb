# 플리마켓 좋아요
class LikeFleaMarket < ActiveRecord::Base
  belongs_to :user
  belongs_to :flea_market
  validates :user_id, uniqueness: {scope: :post_id, message: "한 포스트당 좋아요는 한번만!"}
end
