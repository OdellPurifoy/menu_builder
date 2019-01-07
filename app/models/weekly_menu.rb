class WeeklyMenu < ApplicationRecord
  has_many :meals

  DAYS = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday].freeze
end
