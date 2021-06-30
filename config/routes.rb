Rails.application.routes.draw do
  resources :comments
  get '/users/login', to: 'users#login'
end
