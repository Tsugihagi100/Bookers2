Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "home#top"
  
  resources :books, only: [:new, :create, :index, :show]
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
