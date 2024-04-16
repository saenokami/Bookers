Rails.application.routes.draw do
  root 'homes#top'
  get '/top', to: 'homes#top'

  resources :books, only: [:new, :create]  # :new と :create アクションのみを含む books リソースを定義する
end
