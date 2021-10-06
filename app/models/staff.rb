class Staff < ApplicationRecord
	##validations
		validates :fullname, :presence => true 
		validates :job_title, :presence => true
end
