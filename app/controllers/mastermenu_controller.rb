require 'mailgun'
class MastermenuController < ApplicationController
  def index
    if current_user.level != "master"
      redirect_to "/"
    end
  end

  def user_manage
    @master_user = User.where(level: "master")
    @standby_user = User.where(level:"standby")
    @planner_user  =User.where(level:"planner")
    @seller_user  =User.where(level:"seller")
  end

  def levelup
    @user = User.find(params[:user_id])
    @user.level = "planner"
    @user.tier = "bronze"
    @user.score = 0
    @user.save
    redirect_to '/mastermenu/user_manage'
  end

  def leveldown
    @user = User.find(params[:user_id])
    @user.level = "seller"
    @user.tier = "purple"
    @user.save
    redirect_to '/mastermenu/user_manage'
  end

  def destroy
    @user = User.find(params[:user_id])
    @user.destroy
    redirect_to '/mastermenu/user_manage'
  end

  def write_email
    @receiver = User.find(params[:user_id])
  end

  def send_email
    @receiver = User.find(params[:user_id]).email
    #test때문에 hanjungv@gmail.com으로 해놓음. 나중에 domain등록 후 recevier를 to로 하면 됨
    @content = params[:content]

    mg_client = Mailgun::Client.new("key-7deeff1d41a305f9f58c09a0875254a8")

    message_params =  {
                       from: "admin@gongbang.in",
                       to:   "hanjungv@gmail.com",
                       subject: @content,
                       text:    @content
                      }

    result = mg_client.send_message('sandbox26b79ff589344c698b5c3cf747823d47.mailgun.org', message_params).to_h!

    message_id = result['id']
    message = result['message']
    redirect_to '/mastermenu/user_manage'
  end

  def write_sms
    @receiver = User.find(params[:user_id])
  end

  def send_sms
    @receiver = User.find(params[:user_id]).phone_number
    @content = params[:content]

    client = Coolsms::Client.new :api_key => '',
                                 :api_secret => '', :sender => ""

    client.send_message :to => @receiver, :text => @content


    redirect_to '/mastermenu/user_manage'
  end
end