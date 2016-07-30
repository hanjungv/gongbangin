# 아이템에 대한 카테고리
class Category < ActiveRecord::Base
  has_many :items
  has_many :users, through: :items
end
