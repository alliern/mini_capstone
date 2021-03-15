class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    @cart = CartedProduct.where(status: "carted")
    render "index.json.jb"
  end

  def create
    @cart = CartedProduct.new(

      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      order_id: nil,
      status: "carted"

    )
    @cart.save
    render "index.json.jb"
  end
end
