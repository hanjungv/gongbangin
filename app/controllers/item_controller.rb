class ItemController < ApplicationController
  def create
  end
  def create_item
    @item = Item.new

    @item.name = params[:item_name]
    @item.price = params[:item_price]
    @item.material = params[:item_material]
    @item.period = params[:item_period]
    @item.user_id = params[:user_id]

    file = params[:pic]
    uploader = ItemPicUploader.new
    uploader.store!(file)
    @item.url = uploader.url

    if @item.save
      redirect_to '/item/show'
    else
      render :show, notice:"실패했어요! 다시 한번 해보는게 어때요?"
    end

  end
  def show

  end

  def update
    @item = Item.find(params[:item_id])
  end

  def real_update
    @item = Item.find(params[:item_id])

    @item.name = params[:item_name]
    @item.price = params[:item_price]
    @item.material = params[:item_material]
    @item.period = params[:item_period]
    @item.user_id = params[:user_id]

    if @item.save
      redirect_to '/item/show'
    else
      render :show, notice:"실패했어요! 다시 한번 해보는게 어때요?"
    end
  end

  def destroy
    @item = Item.find(params[:item_id])
    @item.destroy
    redirect_to '/item/show'
  end

  def production_process
    @item = Item.find(params[:item_id])
  end

  def pp_create

    #@item = Item.find(params[:item_id])
    #@pp=ProductionImage.new
    #@pp.process = params[:production_content]
    #@pp.save
  end

end
