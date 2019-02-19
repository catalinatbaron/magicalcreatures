class AvailabilityValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    bookings = Booking.where(["creature_id=?", record.creature_id])
    date_ranges = bookings.map { |booking| booking.start_time..booking.end_time }
    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end
