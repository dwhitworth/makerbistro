class Ingredient < ActiveRecord::Base
  has_many :ingredient_items
  has_many :items, through: :ingredient_items

  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "You're lame" }
end
