# 플리마켓에 참여한 셀러들을 참조하기 위한
class Participation < ActiveRecord::Base
  belongs_to :flea_market
  belongs_to :user
end
