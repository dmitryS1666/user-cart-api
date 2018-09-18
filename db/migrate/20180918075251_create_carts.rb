class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.float :total_sum
      t.integer :products_count
      t.string :products, array: true

      t.timestamps
    end
  end
end
