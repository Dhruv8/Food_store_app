class Address < ApplicationRecord
	 belongs_to :location , polymorphic: true
	 attr_accessor :order_id
	# belongs_to :locality
	validates :Flat_no, presence: true
	validates :building_name, presence: true
	validates :pincode , presence: true ,numericality: true
end
