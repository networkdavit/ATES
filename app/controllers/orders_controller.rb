class OrdersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :show]

  def index
    @orders = Order.all
  end

  def new
    @product = Product.find(params[:product_id])
    @order = Order.new(product: @product)
    @product_id = params[:product_id]
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path, notice: "Order was successfully created.", turbolinks: false
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    redirect_to orders_path
  end


  private

  def order_params
    params.require(:order).permit(:name, :email, :phone, :product_id)
  end
end
