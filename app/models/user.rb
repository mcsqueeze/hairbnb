class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :profile_photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :wigs, through: :bookings, as: :rented_wigs
  has_many :wigs, as: :owned_wigs

  validates :usertype, inclusion: { in: ["lender", "bigwig"] }

end
