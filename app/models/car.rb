class Car < ApplicationRecord
  validates :year, :mileage, presence: true, numericality: true
  validates :make, :model, presence: true
end
