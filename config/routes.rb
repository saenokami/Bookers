Rails.application.routes.draw do
  # 他のルート設定...

  # トップ画面をルートパスに指定
  root 'homes#top'
  post 'books' => 'books#create'

  resources :books
end
