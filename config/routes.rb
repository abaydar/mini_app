Rails.application.routes.draw do
  resources :users, except: :index
  resources :shows
end
