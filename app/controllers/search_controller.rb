class SearchController < ApplicationController
  def user
    @search = User.where('nickname LIKE :search OR email LIKE :search', search: "%#{params[:search]}%").order('score desc')
    render "search/user"
  end

  def search_main
    @all_user = User.order('score desc')
  end

  def planner
    @all_user = User.where(level: 'planner').order('score desc')
  end

  def seller
    @all_user = User.where(level: 'seller').order('score desc')
  end

  # 플리마켓 정보 출력 및 날짜와 지역으로 검색하는 기믕
  def flea_city_place
    @search_flea = Flea.where('city_place LIKE :search', search: "%#{params[:search]}%")
  end

  def flea_application_date
    @search_flea_a = Flea.where('application_start_date <= :search', search: "%#{params[:search]}%")
  end

  def flea_event_date
    @search_flea_e = Flea.where('event_start_date <= :search AND :search <= event_end_date', search: "%#{params[:search]}%")
  end

end
