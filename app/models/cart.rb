class Cart < ApplicationRecord
  validates_presence_of :total_sum, :products_count, :products
end
