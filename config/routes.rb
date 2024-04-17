Rails.application.routes.draw do
  root 'homes#top'
  get '/top', to: 'homes#top'

  get 'lists/:id' => 'lists#show' 
  resources :books
  
end 
