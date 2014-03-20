class Item < ActiveRecord::Base
  has_many :ingredient_items
  has_many :ingredients, through: :ingredient_items

  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "You're lame" }
  validates :price, presence: true
end
