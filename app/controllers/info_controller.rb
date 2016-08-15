class InfoController < ApplicationController
  def myinfo
  end

  def otherinfo
    @user = User.find(params[:user_id])
    render '/info/other'
  end

  def levelup
    if current_user.level == 'standby'
      redirect_to '/'
    end
  end

  def standby
    @user = User.find(params[:user_id])
    @user.level = "standby"
    @user.save
    redirect_to "/"
  end
end
