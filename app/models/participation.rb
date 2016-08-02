# 어떤 셀러가 어떤 플리마켓에 참여했는가
class Participation < ActiveRecord::Base
  belongs_to :flea
  belongs_to :user
end
