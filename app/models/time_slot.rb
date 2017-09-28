class TimeSlot < ApplicationRecord
	has_many :delivery_slots
	has_many :delivery_boys, through: :delivery_slots
	has_many :order_slot
	has_many :order , through: :order_slot
end
