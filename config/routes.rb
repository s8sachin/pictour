Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "posts#index"
  resources :users
  resources :sessions
  resources :posts
  get 'confirm_delete', to: 'posts#confirm_delete', as: :confirm_delete
  resources :comments
end
