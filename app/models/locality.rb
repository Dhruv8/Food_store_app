class Locality < ApplicationRecord
	has_many :addressess, as: :location
	has_many :delivery_boys ,as: :rider
end
