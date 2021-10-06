class Almuni < ApplicationRecord
  ##validations
		validates :fullname, :presence => true 
		validates :sex, :presence => true
		validates :phone_number, :presence => true
end
