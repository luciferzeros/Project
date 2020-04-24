class CustomerController < ApplicationController
  def index
  end

  def createCustomer_get
  end

  def createCustomer_post
    customer = Customer.create params.permit(:customer_name, :credit_card_info, :address)
    account = Account.new
    account.status = :enable
    account.email  = params[:email]
    account.password = params[:password]
    account.customer_id = customer.id
    if account.save
      customer.account_id = account.id
      customer.save
      redirect_to "/customer"
    else
      render json: account.errors.messages, status: :unprocessable_entity
    end
  end

  def updateCustomer_get
    @customer=Customer.where(id: params[:id]).take
    if @customer.nil?
      redirect_to "/customer/create"
    end
  end

  def updateCustomer_post
    @customer=Customer.where(id: params[:id]).take
    if @customer.update(params.permit(:customer_name, :address, :credit_card_info))
      return redirect_to "/customer"
    end
  end

  def removeCustomer
    Customer.where(id: params[:id]).destroy_all
    return redirect_to "/customer"
  end
end
