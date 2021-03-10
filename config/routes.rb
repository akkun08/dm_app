Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  get "chat/:id" => "chats#show", as: "chat"
  resources :chats, only: [:create]
end
