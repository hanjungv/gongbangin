class InfoController < ApplicationController
  def showinfo
    @user = User.find(params[:user_id])
    @items = Item.where(user_id:params[:user_id])
    @prize = UserPrize.where(user_id:params[:user_id])
    @activity = MainActivity.where(user_id:params[:user_id]).order('percentage desc')
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
    @user.brand = params[:brand]
    @user.brand_number = params[:brand_number]
    @user.brand_place = params[:brand_place]
    @user.save

    redirect_to "/"
  end

  def add_activity
    @user = User.find(params[:user_id])
  end

  def create_activity
    @user = User.find(params[:user_id])

    @activity = MainActivity.new
    @activity.name = params[:skill_name]
    @activity.etc_name = params[:tipe1]
    @activity.skill_part = params[:skill_part]
    @activity.etc_part = params[:tipe2]
    @activity.percentage = params[:percentage]
    @activity.user_id = params[:user_id]

    @activity.save

    redirect_to controller: 'info', action: 'showinfo', id: @user.id, something: 'else'
  end

  def destroy_activity
    @user = User.find(params[:user_id])

    @activity = MainActivity.find(params[:activity_id])
    @activity.destroy

    redirect_to controller: 'info', action: 'showinfo', id: @user.id, something: 'else'
  end

  def add_prize
    @user = User.find(params[:user_id])
  end

  def create_prize
    @user = User.find(params[:user_id])

    @prize = UserPrize.new

    @prize.prize_name =params[:prize_name]
    @prize.prize_date =params[:prize_date]
    @prize.contest_name =params[:contest_name]
    @prize.user_id = params[:user_id]

    @prize.save

    redirect_to controller: 'info', action: 'showinfo', id: @user.id, something: 'else'
  end

  def destroy_prize
    @user = User.find(params[:user_id])

    @prize = UserPrize.find(params[:prize_id])
    @prize.destroy

    redirect_to controller: 'info', action: 'showinfo', id: @user.id, something: 'else'
  end
end
