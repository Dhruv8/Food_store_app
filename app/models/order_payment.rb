class OrderPayment < ApplicationRecord
	belongs_to :order
	belongs_to :payment_method
end
