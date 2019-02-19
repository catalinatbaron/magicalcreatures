class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :creature
  has_one :review

  validates :start_time, :end_time, presence: true, availability: true
  validate :end_time_after_start_time

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    errors.add(:end_time, "must be after the start time") if end_time < start_time
  end
end
