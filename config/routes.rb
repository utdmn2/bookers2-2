Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  resources :books, only: [:index, :show, :edit, :update, :destroy, :create] do
   resource :favorites, only: [:create, :destroy]
 end
  resources :users, only: [:show, :index, :edit, :update]
end
