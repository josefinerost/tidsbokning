class Shift < ApplicationRecord
  enum(weekday: { monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4,
                  saturday: 5, sunday: 6 })
  validates(:start, :stop, presence: true)
  validate(:start_before_stop)

  def start_before_stop
    return if stop.nil? || start.nil?
    return if stop > start
    errors.add(:stop, 'Startid måste vara innan sluttid')
  end
end
