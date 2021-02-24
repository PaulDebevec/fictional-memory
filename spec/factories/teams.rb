FactoryBot.define do
  factory :team do
    name  { Faker::Team.name }
    age_group  { '16-18' }
  end
end
