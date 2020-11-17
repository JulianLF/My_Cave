class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_cart, only: %i[destroy]

  def index
    @carts = policy_scope(Cart).where('user_id = :id', id: current_user.id)
  end

  def create
    cart = Cart.new(user_id: current_user.id, product_id: params[:product_id])
    authorize cart
    cart.save
    redirect_to carts_path
  end

  def destroy
    authorize @cart
    @cart.destroy
    redirect_to carts_path
  end

  private

  def find_cart
    @cart = Cart.find(params[:id])
  end
end
