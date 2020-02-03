Rails.application.routes.draw do
 devise_for :users
 root "groups#index"
 resources:users,only:[:edit,:update] #データ編集とデータの投稿を行うリクエストに対して動く
 resources:groups,only:[:index,:new,:create,:edit,:update]
end
