class Participation < ActiveRecord::Base
  belongs_to :flea_market
  belongs_to :user
end
