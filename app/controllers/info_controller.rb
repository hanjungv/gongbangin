class InfoController < ApplicationController
  def showinfo
    @user = User.find(params[:user_id])
    @items = Item.where(user_id:params[:user_id])
    render '/info/show'
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
