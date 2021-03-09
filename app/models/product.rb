class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images, :orders
  # validates :name, :image_url, :price, :description, :stock, presence: true
  # validates :description, length: {in: 20..500}
  # validates :stock, :price, numericality: {greater_than: 0}
  # validates :name, uniqueness: true 


  def is_discounted?
    if price < 15
      true
    else
      false
    end
  end

  def tax
    tax = price * 0.09
    tax
  end

  def total
    total = price + tax
    total
  end
  
  # def supplier
  #   Supplier.where(:id => supplier_id)
  # end
  
  # def images
  #   Image.where(product_id: id)
  
end
