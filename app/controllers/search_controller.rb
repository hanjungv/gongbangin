class SearchController < ApplicationController
  def user
    @search = User.where('nickname = ?', params[:search])
    render "search/user"
  end

  def flea
  end
end
