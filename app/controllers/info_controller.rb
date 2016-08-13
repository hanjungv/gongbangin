class InfoController < ApplicationController
  def myinfo
  end
  def otherinfo
    @user = User.find(params[:user_id])
    render '/info/other'
  end
end
