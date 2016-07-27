class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :purchases, through: :items
  has_many :item_comments
  has_many :item_reviews
  has_many :item_review_replies
  belongs_to :brand
  has_many :brand_likes
  has_many :brand_comments
  has_many :brand_comment_replies
  has_many :reservations, through: :Items
end
