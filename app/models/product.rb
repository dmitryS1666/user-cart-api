class Product < ApplicationRecord
  validates_presence_of :name, :description, :price
  validates :description, length: { maximum: 100 }
  validates :price, numericality: { only_integer: true }, length: { maximum: 3 }
end
