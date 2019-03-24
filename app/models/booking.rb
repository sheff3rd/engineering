class Booking < ApplicationRecord
  belongs_to :account, foreign_key: :owner_id
  belongs_to :studio
end
