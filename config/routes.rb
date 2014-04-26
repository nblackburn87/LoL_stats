LoLStats::Application.routes.draw do
  root to: "games#index"

  resources :games
  devise_for :users
end
