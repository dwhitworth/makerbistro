class Ingredient < ActiveRecord::Base
  has_many :items, through: :ingredients_items

  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "You're lame" }
end
