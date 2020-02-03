class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params) #current_userはサインインしているユーザーを取得する、
      redirect_to root_path #redirect_to でページの切り替え
    else  
      render :edit     #失敗したらeditのビューを表示
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email) #requireがデータのオブジェト名を定め、permitが変更を加えられるキーを指定する
  end
end
