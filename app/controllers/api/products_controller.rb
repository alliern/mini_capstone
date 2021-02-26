class Api::ProductsController < ApplicationController

  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def first_product 
    @product = Product.first
    render "first_product.json.jb"
  end

  def any_product
    product_id = params["id"]
    @product = Product.find_by(id: product_id)

    render "first_product.json.jb"
  end

end
