class ProductController < ApplicationController
  def index
  end

  def createProduct_get
  end

  def createProduct_post
    product = Product.new
    product.name = params[:name]
    product.price = params[:price].to_f
    data = {0 => params[:category0], 1 => params[:category1], 2 => params[:category2], 3 => params[:category3], 4 => params[:category4]}
    product.categories = data.to_s
    if product.save
      return redirect_to "/product"
    else
      return render "createProduct_get"
    end

  end

  def updateProduct_get
    @product = Product.where(id: params[:id]).take
  end

  def updateProduct_post
    product = Product.where(id: params[:id]).take
    product.name = params[:name]
    product.price = params[:price].to_f
    data = {0 => params[:category0], 1 => params[:category1], 2 => params[:category2], 3 => params[:category3], 4 => params[:category4]}
    product.categories = data.to_s
    if product.save
      return redirect_to "/product"
    else
      return render "createProduct_get"
    end
  end
end
