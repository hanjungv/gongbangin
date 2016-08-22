class HomeController < ApplicationController
  def index
  end

  def faq
    @notice = Notice.all.order('created_at desc')
  end
end
