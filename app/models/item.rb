# 아이템
class Item < ActiveRecord::Base
  belongs_to :user
  has_many :item_images
  has_many :production_images
  belongs_to :category


  validates :name, presence: {message: "아이템 이름을 제대로 입력하지 않았습니다."}
  validates :price, presence: {message: "아이템 가격을 제대로 입력하지 않았습니다."}
  validates :period, presence: {message: "제작기간을 제대로 입력하지 않았습니다."}
  validates :material, presence: {message: "주 재료를 제대로 입력하지 않았습니다."}
#validates :url, presence: {message: "아이템 메인 이미지가 입력되지 않았습니다."}

end
