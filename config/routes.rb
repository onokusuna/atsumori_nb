Rails.application.routes.draw do
  root to: "home#top"
  get "tos" => "home#tos"
  get "description" => "home#description"
  resources :items, only: [:index, :show]
  resources :designs, only: [:index]
  resources :turnips, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
