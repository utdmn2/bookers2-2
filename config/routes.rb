Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'relationships/show'
  get 'book_comments/create'
  get 'book_comments/destroy'
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  resources :books, only: [:index, :show, :edit, :update, :destroy, :create] do
   resource :book_comments,only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
 end
  resources :users, only: [:show, :index, :edit, :update]
end
