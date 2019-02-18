class Review < ApplicationRecord
  validates :description, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
