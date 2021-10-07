class Staff < ApplicationRecord
	##validations
		validates :fullname, :presence => true 
		validates :job_title, :presence => true

		has_one_attached :photo
end
