Rails.application.routes.draw do

  root 'static_pages#home'
  get '/about',     to: 'static_pages#about'
  get '/pictures',  to: 'static_pages#pictures'
  get '/videos',    to: 'static_pages#videos'
  get '/subscribe', to: 'followers#subscribe'
  resources :followers
end
