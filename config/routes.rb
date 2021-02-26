Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_product_path" => "products#all_products"
    get "/first_product_path" => "products#first_product"
    get "/any_product_path" => "products#any_product"
  end
end
