class AdministratorController < ApplicationController
  def index
  end

  def create_get
  end

  def create_post
    administrator=Administrator.create params.permit(:admin_name)
    account = Account.new
    account.status=0
    account.email  = params[:email]
    account.password = params[:password]
    account.administrator_id = administrator.id
    account.save
    administrator.account_id = account.id
    administrator.save
    redirect_to "/administrator"
  end

  def update_get
    @admin = Administrator.where(id: params[:id]).take
    if @admin.nil?
      return redirect_to "/administrator/create"
    end
  end

  def update_post
    @admin = Administrator.where(id: params[:id]).take
    if @admin.update(params.permit(:admin_name))
      return redirect_to "/administrator"
    end
  end
end
