class WeeklyMenu < ApplicationRecord
  attr_accessor :meal_id, :name
  attr_readonly :available_day
  has_and_belongs_to_many :meals
  validates :meals, presence: true
end
