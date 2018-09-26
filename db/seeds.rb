product_list = [
    ['Product 1', 'Product 1 - Text', 10],
    ['Product 2', 'Product 2 - Text', 15],
    ['Product 3', 'Product 3 - Text', 2],
    ['Product 4', 'Product 4 - Text', 1],
    ['Product 5', 'Product 5 - Text', 30],
    ['Product 6', 'Product 6 - Text', 21],
    ['Product 7', 'Product 7 - Text', 54]
]

product_list.each do |name, description, price|
  Product.create( name: name, description: description, price: price )
end
