Rails.application.routes.draw do

  devise_for :users
  root to: 'wigs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :wigs  do
  resources :bookings, only: [ :new, :create ]
 end
 resources :bookings, only:  [ :show, :edit, :update, :destroy, :index ]
end
