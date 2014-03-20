class IngredientsItems < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :item
end
