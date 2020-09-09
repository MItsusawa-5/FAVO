class ProductsController < ApplicationController

  def show
  end

  def index
    # binding.pry
    # @images = Image.find(params[:id])
    @products = Product.includes(:images).order('created_at DESC')
    @products_index = @products.order(updated_at: :desc).page(params[:page]).per(4)
  end

  def new
    @product = Product.new
    @product.images.build
  end
  
  def create
    @product = Product.new(product_params)
  
    if @product.save
      redirect_to root_path 
    else
      redirect_to new_product_path, notice: "商品情報を正確に入力して下さい"
    end  
  end

  private
  def product_params
    params.require(:product).permit(
      :name,
      :jump_url,
      :price,
      images_attributes: [:image_name, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_item
    @product = Product.find(params[:id])
  end
  

end
