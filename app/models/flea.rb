# 플리마켓
class Flea < ActiveRecord::Base
  has_many :participations
  has_many :users, through: :participations
  belongs_to :user
  has_many :like_flea_markets
  has_many :users, through: :like_flea_markets
  has_many :comment_flea_markets
  has_many :users, through: :comment_flea_markets


  validates :number_of_recruitment, presence: {message: "인원을 제대로 입력하지 않았습니다."}
  validates :city_place, presence: {message: "개최도시를 제대로 입력하지 않았습니다."}
  validates :detail_place, presence: {message: "상세정보를 제대로 입력하지 않았습니다."}
  validates :entrance_fee, presence: {message: "금액을 제대로 입력하지 않았습니다."}

end
