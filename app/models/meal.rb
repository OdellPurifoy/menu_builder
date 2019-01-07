class Meal < ApplicationRecord
  validates :name, :side_dish, :description, presence: true

  belongs_to :weekly_menu, optional: true
end
