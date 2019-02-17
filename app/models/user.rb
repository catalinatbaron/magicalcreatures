class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :creatures
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true, uniqueness: true
end