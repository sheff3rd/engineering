class Account < ApplicationRecord
  has_one :profile
  has_one :location
  has_one :payment_detail

  has_many :studios
  has_many :messages
  has_many :listings
  has_many :bookings, foreign_key: :owner_id
end
