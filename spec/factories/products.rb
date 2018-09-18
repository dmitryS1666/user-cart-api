FactoryBot.define do
  factory :product do
    name { Faker::StarWars.character }
    description { Faker::GameOfThrones.quote }
    price { Faker::Commerce.price }
  end
end