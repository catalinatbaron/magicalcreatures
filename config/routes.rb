Rails.application.routes.draw do

 devise_for :users
 root to: 'pages#home'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :creatures do
  resources :bookings, only: [:new, :create]
 end
 resources :bookings, only: [:show, :update, :edit, :destroy, :index] do
   resources :reviews, only: [:new, :create]
 end

end
