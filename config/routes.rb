Rails.application.routes.draw do
  root to: "users#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :only => [:index, :show]

  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
end
