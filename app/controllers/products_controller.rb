class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :new, :destroy, :update]  
  
  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end
  
  def show
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
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
    else 
     render :edit
    end
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
