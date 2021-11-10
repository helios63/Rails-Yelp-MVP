class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { within: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :content, presence: true
  belongs_to :restaurant
end
