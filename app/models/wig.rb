class Wig < ApplicationRecord
  belongs_to :user, as: :wig_owner
  has_many :bookings
  has_many :users, through: :bookings, as: :wig_renters
end
