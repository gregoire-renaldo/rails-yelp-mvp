class Review < ApplicationRecord
  belongs_to :restaurant

  validates :name, uniqueness: true, presence: true
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5] }
end

# A review must have a parent restaurant.

