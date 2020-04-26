class OrderController < ApplicationController
  def index
    @order = Order.all
  end

  def create_get
    @orderProduct = OrderProduct.all
    @customer = Customer.all
  end

  def create_post
    shipping_info=ShippingInfo.create params.permit(:shipping_type, :shipping_cost, :shipping_region)
    if shipping_info.save
      order = Order.new date_created: params[:date_created], date_shipped: params[:date_shipped], customer_id: params[:customer_id], status: params[:status], order_product_id: params[:order_product_id], shipping_info_id: shipping_info.id
      if order.save
        return redirect_to "/order"
      end
    end
    return render "create_get"
  end

  def update_get
    @order = Order.where(id: params[:id]).take
    if @order
      @customer = Customer.where(id: @order.customer_id).take
      @shipping_info = ShippingInfo.where(id: @order.shipping_info_id).take
      @orderProduct = OrderProduct.where(id: @order.order_product_id).take
    end
  end

  def update_post
    order = Order.where(id: params[:id]).take
    if order.update params.permit(:date_shipped, :status)
      return redirect_to "/order"
    else
      return render "update_get"
    end
  end

  def delete
    order = Order.where(id: params[:id]).take
    if order
      order.destroy
    end
    return redirect_to "/order  "
  end
end
