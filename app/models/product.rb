class Product < ApplicationRecord
  validates :name, :image_url, :price, :description, :stock, presence: true
  validates :description, length: {in: 20..500}
  validates :stock, :price, numericality: {greater_than: 0}
  validates :name, uniqueness: true 
  validates :name, uniqueness: {message: "This item is already for sale"}

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

  
end
