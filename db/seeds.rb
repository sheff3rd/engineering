puts 'CREATE ACCOUNT'
puts '=============='

@account = Account.create


puts 'CREATE PROFILE'
puts '=============='

@profile = Profile.create(account_id: @account.id)


puts 'CREATE STUDIO'
puts '============='

2.times do
  Studio.create(account_id: @account.id)
end

@studio = @account.studios.first


puts 'CREATE MESSAGES'
puts '==============='

3.times do
  Message.create(account_id: @account.id)
end

@message = @account.messages.first


puts 'CREATE LISTINGS'
puts '==============='

2.times do
  Listing.create(account_id: @account.id)
end

@listing = @account.listings.first


puts 'CREATE PAYMENT DETAILS'
puts '======================'

PaymentDetail.create(account_id: @account.id)


puts 'CREATE LOCATION'
puts '=============='

@location = Location.create(account_id: @account.id)


puts 'CREATE PHOTOS'
puts '============='

2.times do
  Photo.create(studio_id: @studio_id)
end


puts 'CREATE BOOKING'
puts '=============='

@bookings = Booking.create(owner_id: @account.id, studio_id: @studio.id)
