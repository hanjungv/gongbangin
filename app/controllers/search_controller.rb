class SearchController < ApplicationController
  def user
    @search = User.where('nickname LIKE :search OR email LIKE :search', search: "%#{params[:search]}%").order('score desc')
    render "search/user"
  end

  def flea
  end

  def search_main
    @all_user = User.order('score desc')
  end

  def planner
    @all_user = User.where(level:'planner').order('score desc')
  end

  def seller
    @all_user = User.where(level:'seller').order('score desc')
  end
end
