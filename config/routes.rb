Rails.application.routes.draw do
  root 'static_pages#home'
  get '/news', to: 'static_pages#news'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
end
