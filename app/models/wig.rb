class Wig < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_title_and_description,
    against: [:title, :description],
    using: { tsearch: { prefix: true } }
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews
  mount_uploader :photo, PhotoUploader
end
