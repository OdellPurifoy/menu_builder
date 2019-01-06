class Meal < ApplicationRecord
  validates :name, :side_dish, :description, presence: true
end
