class FleasController < ApplicationController
  before_action :set_flea, only: [:show, :edit, :update, :destroy, :like, :dislike]
  # GET /fleas
  # GET /fleas.json
  def index
    @fleas = Flea.all
    @current_time = Time.now
    date = @current_time.to_s.to_date
    @today_flea_a = Flea.all
    @today_flea = Array.new
    unless @current_time.nil?
      @today_flea_a.each do |p|
        if date <= p.event_end_date.to_date
          @today_flea.append(p)
        end
      end
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
    @flea.user_id = current_user.id

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
    params.require(:flea).permit(:name, :application_start_date, :application_end_date, :number_of_recruitment, :remark, :city_place, :detail_place, :event_start_date, :event_end_date, :entrance_fee,:user_id, :join_type)
  end
end
