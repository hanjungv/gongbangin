class BrandComment < ActiveRecord::Base
  belongs_to :brand
  belongs_to :user
  has_many :brand_comment_replies
end
