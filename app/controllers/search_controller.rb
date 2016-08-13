class SearchController < ApplicationController
  def user
    @search = User.where('nickname LIKE ?', "%#{params[:search]}%")
    render "search/user"
  end

  def flea_by_city_place
    @search_flea_by_city_place = Flea.where('city_place LIKE ?', "%#{params[:search_flea_by_city_place]}")
    render "fleas/index.html.erb"
  end

  # def flea_by_period
  #   @search_flea_by_city_place = Flea.where('city_place LIKE ?', "%#{params[:search_flea_by_city_place]}")
  #   render "search/flea"
  # end
  #
  # def flea_by_date
  #   @search_flea_by_city_place = Flea.where('city_place LIKE ?', "%#{params[:search_flea_by_city_place]}")
  #   render "search/flea"
  # end

end
