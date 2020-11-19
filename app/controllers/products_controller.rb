class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit destroy update]

  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def shop
    @products = policy_scope(Product).where(user_id: current_user.id).order(created_at: :desc)
    authorize @products
  end

  def show
  end

  def new
    @product = Product.new(user_id: current_user.id)
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to shop_users_path
  end

  private

  def set_product
    @product = policy_scope(Product).find(params[:id])
    authorize @product
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :availability, :category_id, :photo)
  end
end
