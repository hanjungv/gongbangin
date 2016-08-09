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

  validates :nickname, presence:{message:"닉네임을 입력해주세요!"}, length:{maximum:15, message:"닉네임이 너무 깁니다!"}, uniqueness: true
  validates :name, presence:{message:"이름을 입력해주세요!"}, length:{maximum:100, message:"이름이 너무 깁니다!"}
  validates :phone_number, presence: {message: "전화번호를 입력해주세요!"}
end
