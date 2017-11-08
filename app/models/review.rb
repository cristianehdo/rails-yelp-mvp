class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
