class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
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
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    @product.stock = params[:stock]
    @product.save
  render "show.json.jb"
  end
  
  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.stock = params[:stock] || @product.stock
    @product.save
    render "show.json.jb"
    
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    render json: {message: "Your product was successfully deleted!"}
  end


end
