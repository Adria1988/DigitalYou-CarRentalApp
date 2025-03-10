FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { Faker::Number.between(from: 18, to: 90) }
    city { Faker::Address.city }
  end
end
