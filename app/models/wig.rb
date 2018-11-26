class Wig < ApplicationRecord
  belongs_to :user, as: :owner_of_wig
  has_many :bookings
  has_many :users, through: :bookings, as: :renter_of_wig
end
