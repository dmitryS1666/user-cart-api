Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index, :show]
    # resources :carts
  end

end