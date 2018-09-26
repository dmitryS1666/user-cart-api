class ItemsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    Item.add_item(product, params[:quantity]).save!
  end

  def destroy
    product = Product.find(params[:product_id])
    Item.delete_row(product)
  end
end
