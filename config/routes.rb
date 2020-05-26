Rails.application.routes.draw do
  root to: "home#top"
  get "tos" => "home#tos"
  get "description" => "home#description"
  resources :items, only: [:index, :show, :create]
  resources :designs, only: [:index, :create] do
    resources :likes, only: [:create, :destroy]
  end
  resources :turnips, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
