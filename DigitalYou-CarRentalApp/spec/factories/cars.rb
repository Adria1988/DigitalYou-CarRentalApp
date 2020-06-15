# frozen_string_literal: true

FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.manufacture }
    image { 'https://d1jhx8f0okmpxm.cloudfront.net/uploads/pictures/width_100_f4527618-eaf7-4fff-a889-24116c06427c.jpeg'}
    type_options { Faker::Vehicle.manufacture }
    price_hour {  Faker::Number.between(from: 10, to: 100) }
    doors { Faker::Number.between(from: 2, to: 6) }
    gearshift { Faker::Vehicle.transmission }
    AC { %w[YES NO].sample }
    luggage { Faker::Number.between(from: 10, to: 30) }
    pick_up_location { Faker::Address.city }
  end
end
