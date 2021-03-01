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

  def create
    {
    @name: params[:name],
    @price: params[:price],
    @image_url: params[:image_url],
    @description: params[:description],
  }
  render "show.json.jb"
  end
  
  def update
    product_id = params[:id]
    @product = Product.find(id: product_id)
    
      @name: params[:name] || @product.name,
      @price: params[:price] || @product.price,
      @image_url: params[:image_url] || @product.image_url,
      @description: params[:description] || @product.description
      @product.save
      render "show.json.jb"
    
  end


end
