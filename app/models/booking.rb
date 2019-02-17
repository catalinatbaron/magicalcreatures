class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :creature
  belongs_to :review
end
