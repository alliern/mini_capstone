class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def first_product 
    @product = Product.first
    render "show.json.jb"
  end

  def show
    product_id = params["id"]
    @product = Product.find_by(id: product_id)

    render "show.json.jb"
  end

end
