class ProductsController < ApplicationController

  def show
  end

  def index
    @product = Product.new
    @products = Product.order('created_at ASC')
    # if @product.save
    #   redirect_to products_path
      
    # end
  end

  def new
  end
  
  def create
    Product.create(product_params)
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:text)
  end

end
