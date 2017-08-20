Rails.application.routes.draw do

  # controller :sessions do
  #   get 'login' => :new
  #   post 'login' => :create
  #   delete 'logout' => :destroy
  # end
  # get 'sessions/new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # get 'sessions/login'

  # get 'sessions/logout'

  resources :users
  # resources :orders
  # resources :line_items
  # resources :carts
  # root 'store#index' , as: 'store'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store', via: :all
  end
end
