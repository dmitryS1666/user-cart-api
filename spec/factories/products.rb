FactoryBot.define do
  factory :product do
    name { Faker::StarWars.character }
    description { Faker::GameOfThrones.quote }
    price { Faker::Number.number(2) }
  end
end