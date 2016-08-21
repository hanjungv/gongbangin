class JudgeFleasController < ApplicationController
  def index
    @fleas = Flea.where(user_id:current_user.id)
  end

  def judge
  end
end
