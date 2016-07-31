# 플리마켓 좋아요
class LikeFleaMarket < ActiveRecord::Base
  belongs_to :user
  belongs_to :flea_market
end
