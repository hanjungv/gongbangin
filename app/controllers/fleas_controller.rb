class FleasController < ApplicationController
  before_action :set_flea, only: [:show, :edit, :update, :destroy, :like, :dislike]
  # GET /fleas
  # GET /fleas.json
  def index
    @fleas = Flea.all
    # 반환할 배열을 생성한다
    @past_fleas = Array.new
    @now_fleas = Array.new
    @future_fleas = Array.new
    # 오늘의 날짜를 생성한다
    d = Date.today
    # 모든 플리마켓들을 돌면서 각 조건별로 플리마켓들을 분류한다
    @fleas.each do |p|
      if p.event_end_date < d
        @past_fleas.append(p)
      elsif p.event_start_date.to_date <= d && d <= p.event_end_date
        @now_fleas.append(p)
      elsif d < p.event_start_date
        @future_fleas.append(p)
      end
    end
    # 뽑은 플리마켓들을 행사 종료날짜가 빠른순으로 정렬한다
    unless @past_fleas.empty?
      @past_fleas.sort_by { |p| p[:event_end_date] }
    end
    unless @now_fleas.empty?
      @now_fleas.sort_by { |p| p[:event_end_date] }
    end
    unless @future_fleas.empty?
      @future_fleas.sort_by { |p| p[:event_end_date] }
    end
  end

  def show
    @has_like = @flea.like_flea_markets.where(flea_id: @flea.id, user_id: current_user.id).blank? if current_user
  end

  def like
    if current_user && LikeFleaMarket.create(flea_id: @flea.id, user_id: current_user.id)
      redirect_to @flea
    else
      render :show, notice: 'Like fail'
    end
  end

  def dislike
    if current_user && LikeFleaMarket.find_by(flea_id: @flea.id, user_id: current_user.id).destroy
      redirect_to @flea
    else
      render :show, notice: 'Like success'
    end
  end

  def new
    @flea = Flea.new
  end

  # GET /fleas/1/edit
  def edit
  end

  # POST /fleas
  # POST /fleas.json
  def create
    @flea = Flea.new(flea_params)
    if @flea.save
      redirect_to @flea, notice: 'post was successfully created'
    else
      render :new
    end
  end

  # PATCH/PUT /fleas/1
  # PATCH/PUT /fleas/1.json
  def update
    if @flea.update(flea_params)
      redirect_to @flea, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fleas/1
  # DELETE /fleas/1.json
  def destroy
    @flea.destroy
    redirect_to '/'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_flea
    @flea = Flea.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def flea_params
    params.require(:flea).permit(:application_start_date, :application_end_date, :number_of_recruitment, :remark, :city_place, :detail_place, :event_start_date, :event_end_date, :entrance_fee)
  end
end
