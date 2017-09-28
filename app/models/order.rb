class Order < ApplicationRecord
	has_many :order_items
	has_many :food_items, through: :order_items 
	
	belongs_to :user
	has_many :order_payments
	has_many :payment_methods, through: :order_payments

	has_one :delivery_boy, as: :rider
	has_one :time_slot
	has_one :address ,as: :location
	has_many :order_slot
	has_many :time_slot , through: :order_slot

	accepts_nested_attributes_for :food_items
	accepts_nested_attributes_for :order_items

	attr_accessor :food_item , :order_item
end
