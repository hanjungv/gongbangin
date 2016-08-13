class MastermenuController < ApplicationController
  def index
    if current_user.level != "master"
      redirect_to "/"
    end
    @master_user = User.where(level: "master")
    @standby_user = User.where(level:"standby")
    @planner_user  =User.where(level:"planner")
    @seller_user  =User.where(level:"seller")
  end
  def levelup
    @user = User.find(params[:user_id])
    @user.level = "planner"
    @user.tier = "fuchsia"
    @user.score = @user.score + 1000
    @user.save
    redirect_to '/mastermenu/index'
  end

  def leveldown
    @user = User.find(params[:user_id])
    @user.level = "seller"
    @user.tier = "purple"
    @user.save
    redirect_to '/mastermenu/index'
  end

  def destroyuser

  end
end
