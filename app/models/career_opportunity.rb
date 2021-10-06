class CareerOpportunity < ApplicationRecord
	##validations
		validates :title, :presence => true 
  belongs_to :program
end
