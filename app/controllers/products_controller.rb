class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show_by_category
    @category = Category.find(params[:category_id])
    @products = @category.products
  end

  def show
    @product = Product.find(params[:id])
  end
end