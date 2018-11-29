class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wig

  validate :bookings_must_not_overlap

  private

def bookings_must_not_overlap
  return if self
              .class
              .where.not(id: id)
              .where(wig_id: wig_id)
              .where('start_date < ? AND end_date > ?', end_date, start_date)
              .none?

  errors.add(:base, 'Wig is booked on those dates')
end
end
