Rails.application.routes.draw do



  get "/administrator", to: "administrator#index"
  get "/administrator/create", to: "administrator#create_get"
  post "/administrator/create", to: "administrator#create_post"
  get "/administrator/update/:id", to: "administrator#update_get"
  post "/administrator/update/:id", to: "administrator#update_post"
  get "/administrator/remove/:id", to:"administrator#remove"

  get "/customer", to: "customer#index", as: "index"
  get "/customer/create", to: "customer#creatCustomer_get"
  post "/customer/create", to: "customer#creatCustomer_post"
  get "customer/update/:id", to: "customer#updateCustomer_get"
  post "customer/update/:id", to: "customer#updateCustomer_post"
  get "customer/remove/:id", to:"customer#removeCustomer"

  get "/product", to: "product#index"
  get "/product/create", to: "product#createProduct_get"
  post "/product/create", to: "product#createProduct_post"
  get "/product/update/:id", to: "product#updateProduct_get"
  post "/product/update/:id", to: "product#updateProduct_post"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
