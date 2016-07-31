# 유저
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :participations
  has_many :flea_markets
  has_many :flea_markets, through: :participations
  has_one :resume
  has_many :items
  has_many :categories, through: :items
  has_many :like_flea_markets
  has_many :flea_markets, through: :like_flea_markets
  has_many :comment_flea_markets
  has_many :flea_markets, through: :comment_flea_markets
  has_many :recomment_flea_markets
end

