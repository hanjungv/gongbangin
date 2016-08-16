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



  def create_notice
    @notice = Notice.new
    @notice.title = params[:title]
    @notice.content = params[:content]

    file = params[:pic]
    uploader = NoticePicUploader.new
    uploader.store!(file)
    @notice.url = uploader.url

    if @notice.save
      redirect_to '/home/faq'
    else
      render :show, notice:"실패했어요! 다시 한번 해보는게 어때요?"
    end
  end

  def show_notice
    @all_notice = Notice.all.order('created_at desc')
    @notice = Notice.find(params[:notice_id])
    @notice.view_count = @notice.view_count + 1
    @notice.save
    render '/mastermenu/show_notice'
  end

  def update_notice
    @notice = Notice.find(params[:notice_id])
  end

  def real_update_notice
    @notice = Notice.find(params[:notice_id])

    @notice.title = params[:title]
    @notice.content = params[:content]

    file = params[:pic]
    uploader = NoticePicUploader.new
    uploader.store!(file)
    @notice.url = uploader.url

    if @notice.save
      redirect_to '/home/faq'
    else
      render :show, notice:"실패했어요! 다시 한번 해보는게 어때요?"
    end

  end

  def destroy_notice
    @notice = Notice.find(params[:notice_id])
    @notice.destroy
    redirect_to '/home/faq'
  end

end
