Rails.application.routes.draw do
  # 他のルート設定...

  # トップ画面をルートパスに指定
  root 'homes#top'

  resources :books do
    # 新規投稿用のフォームを表示するページへのルーティング
    get 'new', on: :collection

    # 投稿一覧を表示するページへのルーティング
    get 'index', on: :collection

    # 特定の投稿を表示するページへのルーティング
    get 'show', on: :member

    # 投稿を編集するページへのルーティング
    get 'edit', on: :member
  end
end