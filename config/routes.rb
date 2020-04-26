Rails.application.routes.draw do
  root "account#index"
  get "/login", to: "account#login"
  post"/login", to: "account#verifyLogin"
  get "/logout", to:"account#logout"

  get "/administrator", to: "administrator#index"
  get "/administrator/create", to: "administrator#create_get"
  post "/administrator/create", to: "administrator#create_post"
  get "/administrator/update/:id", to: "administrator#update_get"
  post "/administrator/update/:id", to: "administrator#update_post"
  get "/administrator/remove/:id", to:"administrator#remove"

  get "/customer", to: "customer#index", as: "index"
  get "/customer/create", to: "customer#createCustomer_get"
  post "/customer/create", to: "customer#createCustomer_post"
  get "/customer/update/:id", to: "customer#updateCustomer_get"
  post "/customer/update/:id", to: "customer#updateCustomer_post"
  get "/customer/remove/:id", to:"customer#removeCustomer"

  get "/product", to: "product#index"
  get "/product/create", to: "product#createProduct_get"
  post "/product/create", to: "product#createProduct_post"
  get "/product/update/:id", to: "product#updateProduct_get"
  post "/product/update/:id", to: "product#updateProduct_post"

  get "/order_product", to: "order_product#index"
  get "/order_product/create", to: "order_product#create_get"
  post "/order_product/create", to: "order_product#create_post"
  get "/order_product/update/:id", to: "order_product#update_get"
  post "/order_product/update/:id", to: "order_product#update_post"
  get "/order_product/remove/:id", to:"order_product#delete"

  get "/order", to: "order#index"
  get "/order/create", to: "order#create_get"
  post "/order/create", to: "order#create_post"
  get "/order/update/:id", to: "order#update_get"
  post "/order/update/:id", to: "order#update_post"
  get "/order/remove/:id", to:"order#delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
