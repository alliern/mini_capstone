class Api::ProductsController < ApplicationController

  def index
    #user must be logged in to see data
    # if current_user 
    #   @products = Product.all
    #   render "index.json.jb"
    # else
    #   render json: []
    # end
    @products = Product.all

    # if params[:search]
    # @products = Products.where("name ILIKE ?", "#{params[:search]}%")
    render "index.json.jb"

  end

  def show
    product_id = params["id"]
    @product = Product.find_by(id: product_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.stock = params[:stock]
    @product.supplier_id = params[:supplier_id]

    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: 406
    end
  end
  
  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.stock = params[:stock] || @product.stock
    @product.supplier_id = params[:supplier_id] || product.supplier_id
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: 406
    end
    
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    render json: {message: "Your product was successfully deleted!"}
  end



end
