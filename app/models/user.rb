class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :purchases, through: :items
  has_many :item_comments, through: :items
  has_many :item_reviews, through: :items
  has_many :item_review_replies, through: :item_reviews
  belongs_to :brand
  has_many :brand_likes
  has_many :brand_comments
  has_many :brand_comment_replies, through: :brand_comments
end
