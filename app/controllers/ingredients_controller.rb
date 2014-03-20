class IngredientsController < ApplicationController
  # before_action :set_item

  def new
    @ingredient = Ingredient.new
  end

  def create
    @item = Item.find(params[:item_id])
    @ingredient = @item.ingredients.create(ingredient_params)

    if @ingredient.save
      redirect_to item_path(@item)
    else

    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.update_attributes(ingredient_params)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy
  end

  private
      def ingredient_params
        params.require(:ingredient).permit(:name, :vegan, :vegetarian, :gluten_free, :item_id)
      end

      # def set_item
      #   @item = @ingredient.items.find(params[:id])
      # end
end
