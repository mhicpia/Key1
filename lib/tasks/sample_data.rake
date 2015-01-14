# Create data for keys
namespace :db do
	desc "Fill database with sample data "
	task populate: :environment do
		250.times do |n|
			description = Faker::Company.catch_phrase
			number = Faker::Number.number(7)
			checkout = Faker::Business.credit_card_expiry_date
			checkin = Faker::Business.credit_card_expiry_date

			Key.create!(description: description,
						number: number,
						facility: '0038',
						checkout: checkout,
						checkin: checkin)
		end

		250.times do |n|
			description = Faker::Company.catch_phrase
			number = Faker::Number.number(7)
			checkout = Faker::Business.credit_card_expiry_date
			checkin = Faker::Business.credit_card_expiry_date

			Key.create!(description: description,
						number: number,
						facility: '0036',
						checkout: checkout,
						checkin: checkin)
		end
	end
end