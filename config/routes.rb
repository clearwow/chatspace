Rails.application.routes.draw do
  devise_for :users
 root "messages#index"
 resources:users,only:[:edit,:update] #データ編集とデータの投稿を行うリクエストに対して動く
end
