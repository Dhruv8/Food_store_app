class PaymentMethod < ApplicationRecord
	has_many :order_payments
	has_many :orders ,through: :order_payments
	
	attr_accessor :order_id, :time_slot
end
