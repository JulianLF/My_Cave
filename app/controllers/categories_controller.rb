class CategoriesController < ApplicationController
  before_action :find_category, only: %i[edit update show destroy]

  def index
    @categories = policy_scope(Category).all
    authorize @categories
  end

  def show; end

  def new
    @category = Category.new
    authorize @category
  end

  def create
    @category = Category.new(category_params)
    authorize @category
    @category.save
    redirect_to category_path(@category)
  end

  def edit; end

  def update
    @category.update(category_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category.destroy
    redirect_to categorys_path
  end

  private

  def category_params
    params.require(:category).permit(form_params)
  end

  def find_category
    @category = Category.find(params[:id])
    authorize @category
  end
end
