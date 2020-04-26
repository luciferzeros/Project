class OrderProductController < ApplicationController
  def index
    @op = OrderProduct.all
  end

  def create_get
    @product = Product.all
  end

  def create_post
    op=OrderProduct.create params.permit(:quantity, :unit_price, :product_id)
    if op.save
      return redirect_to "/order_product"
    else
      return render "create_get"
    end
  end

  def update_get
    @op = OrderProduct.where(id: params[:id]).take
    if @op
      @product = Product.all
    else
      return redirect_to "/order_product/create"
    end


  end

  def update_post
    op =OrderProduct.where(id: params[:id])
    if op.update(params.permit(:quantity, :unit_price, :product_id))
      return redirect_to "/order_product"
    else
      return render "update_get"
    end
  end

  def delete
    deleteOrderProduct(params[:id])
    return redirect_to "/order_product"
  end
end
