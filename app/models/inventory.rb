class Inventory < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_many :inventory_foods
end
