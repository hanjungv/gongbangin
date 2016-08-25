class HomeController < ApplicationController
  def index
    @users = User.all
    @items = Item.all
    @fleas = Flea.all
  end

  def faq
    @notice = Notice.all.order('created_at desc')
  end
end
