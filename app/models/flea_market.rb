# 플리마켓
class FleaMarket < ActiveRecord::Base
  has_many :participations
  has_many :users, through: :participations
  belongs_to :user
  has_many :like_flea_markets
  has_many :users, through: :like_flea_markets
  has_many :comment_flea_markets
  has_many :users, through: :comment_flea_markets
end
