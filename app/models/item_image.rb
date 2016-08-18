# 하나의 아이템에 대한 여러 사진 이미지
class ItemImage < ActiveRecord::Base

  belongs_to :item
  
end
