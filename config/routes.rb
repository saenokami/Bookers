Rails.application.routes.draw do
  root 'homes#top'
  get '/top', to: 'homes#top'

  resources :books
  
end 
