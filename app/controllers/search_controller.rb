class SearchController < ApplicationController
  def user
    @search = User.where('nickname LIKE ?', "%#{params[:search]}%")
    render "search/user"
  end

  def flea
  end
end
