FactoryBot.define do
  factory :player do
    first_name  { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    height  { Faker::Number.between(from: 152, to: 200) }
    weight  { Faker::Number.between(from: 130, to: 220) }
    birthday  { Faker::Date.between(from: '1998-01-01', to: '2003-01-01') }
    graduation_year  { Faker::Number.between(from: 2019, to: 2023) }
    position  { Faker::Sports::Basketball.position }
    recruit  { true }
  end
end
