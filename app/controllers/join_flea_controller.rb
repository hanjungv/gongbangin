class JoinFleaController < ApplicationController
  def index
    @fleas = Flea.where('application_end_date > ?',Time.now).order("application_end_date desc")
  end

  def join

    @isThere = FleaSeller.where(flea_id:params[:flea_id]).find(current_user.id)

    if @isThere.nil?
      flash[:notice] = "이미 등록되었습니다"
      redirect_to "/"
    end
    @flea_seller = FleaSeller.new

    @flea_seller.user_id = current_user.id
    @flea_seller.flea_id = params[:flea_id]

    @flea_seller.save

    @flea = Flea.find(params[:flea_id])
    @flea.join_member = @flea.join_member + 1

    @flea.save

    redirect_to "/join_flea/index"
  end
end
