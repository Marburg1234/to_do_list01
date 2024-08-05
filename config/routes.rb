Rails.application.routes.draw do

  root to: 'homes#top'
  get 'homes/about' => 'homes#about'

  devise_for :users

  get "tasks" => "tasks#index"
  get "tasks/new" => "tasks#new"

  post "tasks/create" => "tasks#create"
  # delete "tasks/:id" => "tasks#destroy"

  resources :tasks


end
