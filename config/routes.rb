Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => {:registrations => "user_registration"}
  resources :users

  resources :products do
    resources :comments
  end

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  root 'static_pages#landing_page'

  get '/products/:id', to: 'products#show'

  post 'static_pages/thank_you'

  post 'payments/create'

  mount ActionCable.server => '/cable'

  resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
