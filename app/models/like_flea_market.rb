# 플리마켓 좋아요
class LikeFleaMarket < ActiveRecord::Base
  belongs_to :user
  belongs_to :flea
  validates :user_id, uniqueness: {scope: :flea_id, message: "한 포스트당 좋아요는 한번만!"}
end
