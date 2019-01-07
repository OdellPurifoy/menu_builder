class WeeklyMenu < ApplicationRecord
  attr_accessor :meal_id, :name
  has_many :meals
  validate :available_day_not_changed

  def copy_week
    last_week = WeeklyMenu.last
    new_week = WeeklyMenu.new(last_week.attributes.slice(*WeeklyMenu.attribute_names))
  end

  private

  def available_day_not_changed
    if available_day_changed? && persisted?
      errors.add(:available_day, 'Change of available day not allowed!')
    end
  end
end
