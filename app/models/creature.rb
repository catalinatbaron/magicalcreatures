class Creature < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :price, presence: true

  # mount_uploader :photo, PhotoUploader

end
