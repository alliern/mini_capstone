class AddsQuantityToCartedProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :carted_products, :quantity, :integer
  end
end
