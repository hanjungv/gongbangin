class HomeController < ApplicationController
  def index
    @users = User.all
    @items = Item.all
    @fleas = Flea.all
  end

  def faq
    @notice = Notice.all.order('created_at desc')
  end

  def faq_email
    #test때문에 hanjungv@gmail.com으로 해놓음. 나중에 domain등록 후 recevier를 to로 하면 됨
    @content = params[:content]
    @name = params[:name]
    @who = params[:email]
    @phone_numb = params[:phone_number]
    mg_client = Mailgun::Client.new('key-7deeff1d41a305f9f58c09a0875254a8')

    message_params = {
        from: @who,
        to: 'hanjungv@gmail.com',
        subject: @content,
        text: @content
    }

    # result = mg_client.send_message('sandbox26b79ff589344c698b5c3cf747823d47.mailgun.org', message_params).to_h!
    result = mg_client.send_message('gongbang.in', message_params).to_h!

    message_id = result['id']
    message = result['message']
    redirect_to '/home/faq'
  end
end
