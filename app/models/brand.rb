class Brand < ActiveRecord::Base
  has_many :users
  has_many :ratings
  has_many :brand_likes
  has_many :brand_comments
end
