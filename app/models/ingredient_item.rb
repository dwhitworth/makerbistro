class IngredientItem < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :item
end
