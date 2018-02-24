Rails.application.routes.draw do

  root 'static_pages#home'
  get    '/about',     to: 'static_pages#about'
  get    '/pictures',  to: 'static_pages#pictures'
  get    '/videos',    to: 'static_pages#videos'
  get    '/subscribe', to: 'followers#subscribe'
  get    '/login',     to: 'sessions#new'
  post   '/login',     to: 'sessions#create'
  delete '/logout',    to: 'sessions#destroy'
  resources :followers
  resources :posts
end
