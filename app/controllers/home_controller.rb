class HomeController < ApplicationController
  def index
  end

  def upload
    file = params[:pic]
    uploader = AwsS3Uploader.new
    uploader.store!(file)

    redirect_to '#'
  end

  def faq
    @notice = Notice.all.order('created_at desc')
  end
end
