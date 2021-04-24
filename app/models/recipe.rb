class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :instructions
  has_many :steps, through: :instructions
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
