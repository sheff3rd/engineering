class Studio < ApplicationRecord
  has_many :photos
  has_many :bookings

  belongs_to :account
end
