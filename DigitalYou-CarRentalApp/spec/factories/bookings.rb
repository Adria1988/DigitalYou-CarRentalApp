# frozen_string_literal: true

FactoryBot.define do

  factory :booking do
    start_date { Faker::Date.in_date_period(year:2020, month:7) }
    end_date { Faker::Date.in_date_period(year:2020, month: 8) }
    car_id { nil }
    user_id { nil }

  end
end