class WeeklyMenu < ApplicationRecord
  attr_accessor :meal_id, :name
  attr_readonly :available_day
  has_and_belongs_to_many :meals
  validates :meals, presence: true

  def copy_week
    last_week = WeeklyMenu.last
    new_week = WeeklyMenu.new(last_week.attributes.slice(*WeeklyMenu.attribute_names))
  end
end
