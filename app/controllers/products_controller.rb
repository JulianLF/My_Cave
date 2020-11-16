class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :new, :destroy]  
  
  def index
  end

  def new
   @product = Product.all
  end

  def show
  end

  def edit
  end

  def destroy
    @product.destroy
    redirect_to_product_path(@product)
  end

 private 
   def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :availability)
  end
end