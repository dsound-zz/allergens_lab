class Ingredient < ApplicationRecord
  has_many :allergens
  has_many :users, through: :allergens
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  validates :name, uniqueness: true

end
