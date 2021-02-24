FactoryBot.define do
  factory :user do
    full_name  { Faker::FunnyName.two_word_name }
    email  { Faker::Internet.unique.email }
    password { "password" }
  end
end
