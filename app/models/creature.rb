class Creature < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader
end
