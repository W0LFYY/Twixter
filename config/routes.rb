Rails.application.routes.draw do
  root 'user_bios#index'
  devise_for :users
  resources :user_bios do
  resources :posts
  end
  scope 'posts/:post_id', as: 'post' do
    resources :comments, only: [:new, :create]
  end
end
