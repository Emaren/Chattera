Rails.application.routes.draw do

  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]

  root 'sessions#new'

  mount ActionCable.server => '/cable'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
