class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)

    if @ingredient.save
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
end
