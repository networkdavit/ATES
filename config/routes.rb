Rails.application.routes.draw do
  # devise_for :users
  devise_for :user, :path => '', :path_names => { :sign_in => "admin/login", :sign_out => "logout", :sign_up => "admin/new/user/register" }

  root 'products#index'

  get '/products/category/:category_id', to: 'products#show_by_category', as: 'show_by_category'
  get '/products/new', to: 'products#new', as: 'new_product'
  get '/products/:id', to: 'products#show', as: 'product'

  authenticate :user, ->(user) { user.admin? } do
    resources :products, only: [:new, :create, :edit, :update, :destroy]
  end
end
