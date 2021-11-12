Rails.application.routes.draw do
  devise_for :users
  resources :rallies
  root 'statics#home'

  get "/presentation", to: "statics#presentation"
  get "/team", to: "statics#team"
  get "/partners", to: "statics#partners"
  get "/become_partner", to: "statics#become_partner"

  resources :rallies, only: [:edit, :update, :show, :destory] do
    resources :articles
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
