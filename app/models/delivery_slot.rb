class DeliverySlot < ApplicationRecord
	belongs_to :time_slot
	belongs_to :delivery_boy
end
