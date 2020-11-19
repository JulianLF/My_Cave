class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = policy_scope(Transaction).where('user_id = :id', id: current_user.id)
  end

  def create
    carts = Cart.where('user_id = :id', id: current_user.id)
    carts.each do |cart|
      transaction = Transaction.new(user_id: current_user.id, product_id: cart.product.id)
      authorize transaction
      transaction.save!
      cart.destroy
    end
    redirect_to transactions_path
  end
end
