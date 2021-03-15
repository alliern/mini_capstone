class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def create
    items = CartedProducts.where(status: "carted")


    @order = Order.new(
      user_id: current_user.id,
      subtotal: items.subtotal


    )

   
    @order.save
    render "show.json.jb"
    # else
    #   render json: {error: "User must be signed in"}
    # end
  
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
    
  end

  def show
    order_id = params[:id]
    @order = current_user.orders.find(order_id)
  end

end


 # product = Product.find_by(id: params[:product_id])

    # calculated_subtotal = product.price * params[:quantity].to_i
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax

    # @order = Order.new(
    #   user_id: current_user.id,
    #   product_id: params[:product_id],
    #   quantity: params[:quantity],
    #   subtotal: calculated_subtotal,
    #   tax: calculated_tax,
    #   total: calculated_total
    # )