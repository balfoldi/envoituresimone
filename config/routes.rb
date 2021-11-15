Rails.application.routes.draw do
  devise_for :users
  root 'statics#home'

  get "/presentation", to: "statics#presentation"
  get "/team", to: "statics#team"

  resources :partners, only: [:create, :update, :index, :destroy]
  resources :rallies, only: [:new, :edit, :update, :show, :destroy] do
    resources :articles, only: [:create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
