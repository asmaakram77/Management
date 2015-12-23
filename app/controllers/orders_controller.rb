class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  before_filter :set_order, only: [:show, :edit, :update, :destroy]
  before_filter :set_customer, only: [:create, :new]
  respond_to :html
  def index
    @customer = Customer.find(params[:customer_id])
         @orders = @customer.orders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
   respond_with(@order)
   @order.save
   redirect_to @customer
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
   @order = @customer.orders.new
   #respond_with(@order)
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = @customer.orders.new(params[:order])
         @order.save
         redirect_to @customer
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order.update_attributes(params[:customer_id])
          respond_with(@order)
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_with(@order)
  end
  private
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end
    def set_order
      @order = Order.find(params[:order_id])
    end
end
