class Food < ApplicationRecord
    has_many :inventory_food
    has_many :recipe_food
    has_many :inventory, through: :inventory_food
    has_many :recipe, through: :recipe_food
end
