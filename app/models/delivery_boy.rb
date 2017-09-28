class DeliveryBoy < ApplicationRecord
	belongs_to :rider ,polymorphic: true
	
	has_many :delivery_slots
	has_many :time_slots ,through: :delivery_slots

	attr_accessor :locality , :time_slot
end
