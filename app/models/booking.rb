class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :creature
  has_one :review
end
