Rails.application.routes.draw do
  root to: "home#top"
  get "tos" => "home#tos"
  get "description" => "home#description"
  resources :items, only: [:index, :show, :create]
  resources :designs, only: [:index, :create] do
    resources :likes, only: [:create, :destroy]
    # ransackでの検索用
    collection do
      match "search" => "designs#search", via: [:get, :post], as: :search
      # matchメソッドと:viaオプションを使うことで、複数のHTTP動詞に同時にマッチするルーティングを作成
    end
  end
  resources :turnips, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
