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
    @user.tier = "pink"
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
    @content = params[:content]

    mg_client = Mailgun::Client.new("key-7deeff1d41a305f9f58c09a0875254a8")

    message_params =  {
                       from: "Gongbangin_admin",
                       to:   @receiver,
                       subject: @content,
                       text:    @content
                      }

    result = mg_client.send_message('sandbox26b79ff589344c698b5c3cf747823d47.mailgun.org', message_params).to_h!

    message_id = result['id']
    message = result['message']
    redirect_to '/home/index'
  end
end
