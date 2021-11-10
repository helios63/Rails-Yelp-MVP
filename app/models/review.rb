class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: RATING }
  validates :content, presence: true
  belongs_to :restaurant
end
