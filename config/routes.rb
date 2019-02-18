Rails.application.routes.draw do

  devise_for :users



  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :creatures do
    resources :bookings, only: [:new, :create, :update, :edit]
  end
  resources :bookings, only: [:destroy, :show]  do
    collection do
      get 'my-bookings'
    end
    resources :reviews, only: [:new, :create]
  end
end
