Rails.application.routes.draw do
  root 'products#index'
  get '/products/category/:category_id', to: 'products#show_by_category', as: 'show_by_category'
  get 'products/:id', to: 'products#show', as: 'product'
end
