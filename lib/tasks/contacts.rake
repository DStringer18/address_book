namespace :contacts do
  desc "Seeds contacts"
  task seed_contacts: :environment do
    require 'faker'

    Contact.destroy_all

    100.times do
      Contact.create!([
          {
            salutation: "Mr.",
            first_name: Faker::Name.first_name,
            middle_name: Faker::Name.middle_name,
            last_name: Faker::Name.last_name,
            dob: Faker::Date.birthday(min_age:18, max_age: 88),
            comment: Faker::Lorem.sentence(word_count: 10),
            addresses_attributes: [
              {
                street: Faker::Address.street_address,
                town: Faker::Address.city,
                state: Faker::Address.state_abbr,
                zip: Faker::Address.zip,
                country: Faker::Address.country
              },
              {
                street: Faker::Address.street_address,
                town: Faker::Address.city,
                state: Faker::Address.state_abbr,
                zip: Faker::Address.zip,
                country: Faker::Address.country
              }
            ],
            emails_attributes: [
              {
                email_address: Faker::Internet.unique.email,
                comment: Faker::Lorem.sentence(word_count: 10).chop
              },
              {
                email_address: Faker::Internet.unique.email,
                comment: Faker::Lorem.sentence(word_count: 10).chop
              }
            ],
            phone_numbers_attributes: [
              {
                kind: 'Home',
                number: Faker::PhoneNumber.unique.phone_number,
                comment: Faker::Lorem.sentence(word_count: 10).chop
              },
              {
                kind: 'Office',
                number: Faker::PhoneNumber.unique.cell_phone,
                comment: Faker::Lorem.sentence(word_count: 10).chop
              }
            ]
          }
        ])
        Faker::UniqueGenerator.clear
      end
  end
end