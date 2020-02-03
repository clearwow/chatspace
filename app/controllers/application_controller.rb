class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! #before_actionとは全てのアクションが実行される前にこの部分が実行される。またこの一文でログイン済みユーザーのみにアクセス許可をする。
  before_action :configure_permitted_parameters,if: :devise_controller? #前者はパラメーターを設定するよっていう意味、後者はdeviseにまつわる画面だけ適用される。

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:name]) #前者はdiviseで設定されさているstrong_parametersに対してパラメーターを追加。後者は追加したいパラメーターの種類と名前を追加。
  end
end
