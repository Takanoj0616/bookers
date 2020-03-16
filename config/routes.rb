Rails.application.routes.draw do
  # get 'home/top'
  # root :to => 'todolists#index'
  # get 'home/index'
  # get 'top' => 'homes#top'

  root to: 'home#top'
  # post 'todolists' => 'todolists#create'
  # get 'todolists' => 'todolists#index'
  # get 'todolists/:id' => 'todolists#show', as: 'todolist'
  # get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  # patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  # delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  resources :books



end
