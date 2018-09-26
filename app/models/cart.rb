class Cart < ApplicationRecord
	validates_presence_of :total_sum, :products_count
	
	def self.get_cart
		@cart = Cart.first
		@cart = Cart.create(total_sum: 0, products_count: 0, products: []) unless @cart
		@cart.update_cart_params
	end
	
	def update_cart_params
		self.total_sum = get_total_sum
		self.products_count = get_products_count
		self.products = get_items
		self
	end
	
	def get_total_sum
		Item.sum(:sum)
	end
	
	def get_products_count
		Item.sum(:quantity)
	end
	
	def get_items
		Item.select(:id, :sum, :quantity).as_json
	end

end
