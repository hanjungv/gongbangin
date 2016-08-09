# 유저
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :participations
  has_many :fleas
  has_many :fleas, through: :participations
  has_one :resume
  has_many :items
  has_many :categories, through: :items
  has_many :like_flea_markets
  has_many :fleas, through: :like_flea_markets
  has_many :comment_flea_markets
  has_many :fleas, through: :comment_flea_markets
  has_many :recomment_flea_markets

  mount_uploader :profile_image_url, AwsS3Uploader

  validates :nickname, presence: {message: "닉네임을 입력해주세요!"}, length: {maximum: 15, message: "닉네임이 너무 깁니다!"}, uniqueness: true
end
