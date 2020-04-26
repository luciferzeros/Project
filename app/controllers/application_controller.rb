class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def deleteOrderProduct(id)
    op = OrderProduct.where(id: id).take
    if op
      p=Product.where(id: op.product_id)
      if p
        p.delete_all
      end
      op.delete
    end
  end

  def deleteOrder(id)
    order = Order.where(id: id).take
    if order
      # ship = ShippingInfo.where(id: order.shipping_info_id)
      # if ship
      #   ship.delete_all
      # end
      order.delete
    end
  end

end
