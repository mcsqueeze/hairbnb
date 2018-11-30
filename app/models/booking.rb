class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wig

  validate :bookings_must_not_overlap
  validate :start_date_in_past, on: :create
  validate :start_date_end_date, on: :create


def bookings_must_not_overlap
  return if self
              .class
              .where.not(id: id)
              .where(wig_id: wig_id)
              .where('start_date < ? AND end_date > ?', end_date, start_date)
              .none?

  errors.add(:base, "Wig is booked on those dates")

end




def start_date_end_date
  if start_date > end_date
    errors.add(:start_date, 'must occur before end date')

end
end

def start_date_in_past
  if start_date < Date.today
    errors.add(:start_date, 'must not be in past')
  end
end

end
