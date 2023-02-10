class Food < ApplicationRecord
  has_many :inventory_foods, dependent: :delete_all
  has_many :recipe_foods
  has_many :inventories, through: :inventory_foods
  has_many :recipes, through: :recipe_foods
end
