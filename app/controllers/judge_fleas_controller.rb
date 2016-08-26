class JudgeFleasController < ApplicationController
  def index
    @fleas = Flea.where(user_id:current_user.id).order("application_end_date desc")
  end

  def show
    @user = User.find(params[:user_id])
    @flea = Flea.find(params[:flea_id])
    @items =Item.where(user_id:params[:user_id])
    @prize = UserPrize.where(user_id:params[:user_id])
  end

  def judge
    @flea = Flea.find(params[:flea_id])
    @join_user = FleaSeller.where(flea_id:params[:flea_id]).order('score desc')
  end


  def select
    @flea = Flea.find(params[:flea_id])
    @isThere = FleaSeller.where(flea_id:params[:flea_id]).find_by(user_id:params[:user_id])

    @user = User.find(params[:user_id])
    @user.score = @user.score + 50

    @isThere.destroy

    redirect_to controller: 'judge_fleas', action: 'judge', id: @flea.id, something: 'else'

  end

  def confirm_join
    @flea = Flea.find(params[:flea_id])
    @user = User.find(params[:user_id])

    @flea_seller = FleaSeller.where("flea_id = ? AND user_id = ?", params[:flea_id],params[:user_id])
    @sh = @flea_seller.first
    @sh.score = params[:total]
    @sh.review = params[:content]
    @sh.save

    redirect_to controller: 'judge_fleas', action: 'judge', id: @flea.id, something: 'else'
  end

  def result
    @user = User.find(params[:user_id])
    @flea = Flea.find(params[:flea_id])
    @result = FleaSeller.where(flea_id:params[:flea_id]).find(params[:user_id])
  end
end
