class Review < ApplicationRecord
  validates :description, presence: true
  validates :rating, presence: true, :inclusion => { :in => 0..5 }
end
