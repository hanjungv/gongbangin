class JudgeFleasController < ApplicationController
  def index
    @fleas = Flea.where(user_id:current_user.id).order("application_end_date desc")
  end

  def show
    @user = User.find(params[:user_id])
  end

  def judge
    @flea = Flea.find(params[:flea_id])
    @users = FleaSeller.where(flea_id:params[:flea_id])
  end
end
