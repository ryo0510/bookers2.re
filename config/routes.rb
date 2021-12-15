Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
   resources :books, only: [:create, :index, :show, :edit, :update]
   resources :users, only: [:update, :index, :show, :edit]
end
