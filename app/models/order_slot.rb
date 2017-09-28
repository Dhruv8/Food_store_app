class OrderSlot < ApplicationRecord
	belongs_to :order
	belongs_to :time_slot
end
