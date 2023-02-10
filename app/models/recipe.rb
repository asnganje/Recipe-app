class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :recipe_foods, dependent: :delete_all
  has_many :foods, through: :recipe_foods
end
