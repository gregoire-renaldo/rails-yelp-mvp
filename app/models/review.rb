class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, length: { minimum: 1 }
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end

# A review must have a parent restaurant.

