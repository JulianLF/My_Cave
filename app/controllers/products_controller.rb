class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :new, :destroy, :update]  
  
  def index
   @product = policy_scope(Product).order(created_at: :desc)
  end
  
  def show
  end

  def new
    authorize @product
    @product = Product.new
  end

  def create
    authorize @product
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path
    else
      render :new
    end
  end
   
  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
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