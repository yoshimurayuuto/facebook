class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to session_path(user.id)
      # ログイン成功した場合
    else
      flash.now[:danger] = 'ログインに失敗しました'
      @email = params[:email]
      @password = params[:password]
      render 'new'
    end
  end

  def show
  end

  def destroy
    # ログアウトの処理
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
