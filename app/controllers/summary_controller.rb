class SummaryController < ApplicationController
  
  def bill_receipt
  	order = Order.find(params[:order_id])
  	@address = order.address
  	@email = order.user.email
  	@order_no = session[:ref_id]
  	@time_slot = TimeSlot.find(params[:time_slot]).name
  	@time = Time.now
  	@item = FoodItem.find(order.order_items.last.food_item_id).name
  	@quantity =  order.order_items.last.food_item_quantity
  	@amount = @quantity.to_i * (order.food_items.last.price).to_i
  	@payment =PaymentMethod.find(order.order_payments.last.payment_method_id).name
  end
end
