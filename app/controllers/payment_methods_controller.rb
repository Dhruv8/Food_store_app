class PaymentMethodsController < ApplicationController
  before_action :set_payment_method, only: [:show, :edit, :update, :destroy]

  # GET /payment_methods
  # GET /payment_methods.json
  def index
    @payment_methods = PaymentMethod.all
  end

  # GET /payment_methods/1
  # GET /payment_methods/1.json
  def show
  end

  # GET /payment_methods/new
  def new
    @payment_method = PaymentMethod.new
  end

  # GET /payment_methods/1/edit
  def edit
  end

  # POST /payment_methods
  # POST /payment_methods.json
  def create
    @payment_method = PaymentMethod.new(payment_method_params)
    if @payment_method.order_id.present?
      @time_slot = TimeSlot.find_by_name(@payment_method.time_slot)
      @order = Order.find(@payment_method.order_id.to_i) if @payment_method.order_id.present?
      @payment = PaymentMethod.find_by_name(@payment_method.name)
      @payment.orders << @order
      @recieve_time = Time.now
      @item = @order.food_items.last.name
      @price = @order.food_items.last.price
      @user_email = @order.user.email
      @address = @order.address
      respond_to do |format|
        format.html { redirect_to order_summary_path(order_id:  @payment_method.order_id, time_slot: @time_slot ), notice: 'Payment successfully recieved, Enjoy your Food!!.' }
      end  
    else
      respond_to do |format|
        if @payment_method.save
          format.html { redirect_to @payment_method, notice: 'Payment method was successfully created.' }
          format.json { render :show, status: :created, location: @payment_method }
        else
          format.html { render :new }
          format.json { render json: @payment_method.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /payment_methods/1
  # PATCH/PUT /payment_methods/1.json
  def update
    respond_to do |format|
      if @payment_method.update(payment_method_params)
        format.html { redirect_to @payment_method, notice: 'Payment method was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_method }
      else
        format.html { render :edit }
        format.json { render json: @payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  def order_payment
    @order_id = params[:order_id]
    @order_payment = PaymentMethod.new
  end

  # DELETE /payment_methods/1
  # DELETE /payment_methods/1.json
  def destroy
    @payment_method.destroy
    respond_to do |format|
      format.html { redirect_to payment_methods_url, notice: 'Payment method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_method
      @payment_method = PaymentMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_method_params
      params.require(:payment_method).permit(:name, :order_id, :time_slot)
    end
end
