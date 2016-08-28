class FleasController < ApplicationController
 before_action :set_flea, only: [:show, :edit, :update, :destroy, :like, :dislike]
 # GET /fleas
 # GET /fleas.json
 def index
   @search_time = Time.now.to_s.to_date
   @search_flea = Array.new
   @option = params[:option]
   if @option.nil?
     # 지역이랑 날짜로 검색
     @search_city = params[:city]
     @search_time = params[:search]
     if @search_time.nil?
       @search_time = Time.now.to_s.to_date
     end

     if @search_city == '전체'
       @today_flea_a = Flea.all.order(:event_end_date)
     elsif @search_city == nil
       @today_flea_a = Flea.all.order(:event_end_date)
     else
       @today_flea_a = Flea.where(city_place: @search_city).order(:event_end_date)
     end
     date = @search_time.to_s.to_date
     unless @today_flea_a.nil?
     @today_flea_a.each do |p|
       if p.event_start_date.to_date <= date && date <= p.event_end_date
         @search_flea.append(p)
       end
     end
     end

   else
     fleas = Flea.all
     date = Date.today

     if @option == 'now'
       fleas.each do |p|
         if p.event_start_date.to_date <= date && date <= p.event_end_date.to_date
           @search_flea.append(p)
         end
       end
       @title_ko = '오늘의 마켓'
       @title_eng = 'TODAY MARKET'
     elsif @option == 'future'
       fleas.each do |p|
         if date <= p.event_start_date.to_date
           @search_flea.append(p)
         end
       end
       @title_ko = '내일의 마켓'
       @title_eng = 'ONCOMING MARKET'
     elsif @option == 'past'
       fleas.each do |p|
         if p.event_end_date.to_date <= date
           @search_flea.append(p)
         end
       end
       @title_ko = '어제의 마켓'
       @title_eng = 'FINISHED MARKET'
     end
   end

   count = @search_flea.count
   if count >= 4
          @recently_flea = @search_flea.take(4)
   else
          @recently_flea = @search_flea.take(count)
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
   params.require(:flea).permit(:name, :application_start_date, :application_end_date, :number_of_recruitment, :remark, :city_place, :detail_place, :event_start_date, :event_end_date, :entrance_fee,:user_id, :join_type, :item_count, :agree1,:agree2,:agree3,:agree4,:agree5,:poster_url)
 end
end
