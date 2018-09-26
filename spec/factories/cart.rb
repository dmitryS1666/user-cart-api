FactoryBot.define do
  factory :cart do
    total_sum Faker::Commerce.price
    products_count Faker::Number.number(2)
    products  []
  end
end