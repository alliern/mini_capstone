class Api::OrdersController < ApplicationController

  def create
    if current_user
    @order = Order.new
    @order.user_id = params[:user_id]
    @order.product_id = params[:product_id]
    @order.quantity = params[:quantity]
    # @order.subtotal = params[:subtotal]
    # @order.tax = params[:tax]
    # @order.total = params[:total]
    if @order.save
    render json: "show.json.jb"
    else
      render json: {error: "User must be signed in"}
    end
    end
  end
end
