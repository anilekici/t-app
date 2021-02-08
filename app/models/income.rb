class Income < ApplicationRecord
  validates :frequency, :value, :hours, :days, presence: true
end
