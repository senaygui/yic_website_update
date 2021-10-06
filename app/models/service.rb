class Service < ApplicationRecord
	##validations
		validates :service_name, :presence => true 
		validates :service_overview, :presence => true
		validates :details, :presence => true
end
