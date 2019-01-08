class Meal < ApplicationRecord
  validates :name, :side_dish, :description, presence: true

  has_and_belongs_to_many :weekly_menu, optional: true
end
