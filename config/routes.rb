Rails.application.routes.draw do
  namespace :api do
    get '/cart', to: '/carts#show'
    get '/products', to: '/products#index'
    post '/cart', to: '/items#create'
    delete '/cart', to: '/items#destroy'
  end
end