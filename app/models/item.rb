class Item < ApplicationRecord
  validates_presence_of :sum, :quantity
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  def self.add_item(product, quantity)
    begin
      row = self.find(product.id)
      row.quantity += quantity.to_i
      row.sum += product.price * quantity.to_i
    rescue ActiveRecord::RecordNotFound
      row = Item.create(id: product.id, quantity: quantity, sum: product.price * quantity.to_i)
    end
    row
  end

  def self.delete_row(product)
    row = self.find(product.id)
    if row.quantity > 1
      row.quantity -= 1
      row.sum -= product.price
      row.save!
    else
      row.delete
    end
  end

end
