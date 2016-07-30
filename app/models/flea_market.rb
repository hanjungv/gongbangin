class FleaMarket < ActiveRecord::Base
  has_many :participations
  has_many :users, through: :participations
  belongs_to :user
end
