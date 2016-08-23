class JoinFleaController < ApplicationController
  def index
    @fleas = Flea.where('application_end_date > ?',Time.now).order("application_end_date desc")
  end

  def join
  end

  def make
    @isThere = FleaSeller.where(flea_id:params[:flea_id]).find_by(current_user.id)

    unless @isThere.blank?
      redirect_to "/join_flea/join"
    else
      @flea_seller = FleaSeller.new

      @flea_seller.user_id = current_user.id
      @flea_seller.user_email = current_user.email
      @flea_seller.user_name = current_user.name
      @flea_seller.user_tier = current_user.tier

      @flea_seller.flea_id = params[:flea_id]

      @flea_seller.save

      @flea = Flea.find(params[:flea_id])
      @flea.join_member = @flea.join_member + 1

      @flea.save

      redirect_to "/join_flea/index"
    end

  end
end
