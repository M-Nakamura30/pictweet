Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#index'
  get  'tweets' => 'tweets#index'    #ツイート一覧画面
  get  'tweets/new' => 'tweets#new'  #ツイート投稿画面
  post 'tweets' => 'tweets#create' #ツイート投稿機能、サーバーにデータを送信（post）
  delete  'tweets/:id'  => 'tweets#destroy'
  get   'tweets/:id/edit'  => 'tweets#edit'
  get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
end
