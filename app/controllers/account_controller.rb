class AccountController < ApplicationController
  def index
    user = Account.find_by id: session[:user_id]
    if !user
      redirect_to "/login"
    end
  end

  def login
  end

  def verifyLogin
    user = Account.where(email: params[:email]).take
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      return redirect_to "/"
    else
      return render "login"
    end
  end

  def update
    @user = Account.where(id: params[:id]).take
    if @user
      @customer = Customer.where(account_id: @user.id).take
      @admin = Administrator.where(account_id: @user.id).take
    end
  end

  def updateAccount

  end

  def logout
    session.delete :user_id
    redirect_to "/login"
  end

end
