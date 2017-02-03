Rails.application.routes.draw do
  resources :lesson_steps
  resources :authors
  resources :courses
  resources :lessons
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
