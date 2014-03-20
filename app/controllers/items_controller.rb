class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    if @item.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.update_attributes(item_params)
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy
  end

  private
      def item_params
        params.require(:item).permit(:name, :price)
      end

end
