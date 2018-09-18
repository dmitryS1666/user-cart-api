FactoryBot.define do
  factory :cart do
    total_sum { Faker::Commerce.price }
    products_count { Faker::Number.number(3) }
    products { [Faker::GameOfThrones.house, Faker::GameOfThrones.house] }
  end
end