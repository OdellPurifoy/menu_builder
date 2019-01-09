class WeeklyMenu < ApplicationRecord
  attr_accessor :meal_id, :name
  attr_readonly :start_date
  has_and_belongs_to_many :meals
  validates :meals, presence: true

  accepts_nested_attributes_for :meals
end
