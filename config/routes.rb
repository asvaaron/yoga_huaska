Rails.application.routes.draw do
  resources :appointments
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show, :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
