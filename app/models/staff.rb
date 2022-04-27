class Staff < ApplicationRecord
	##validations
		validates :fullname, :presence => true 
		validates :job_title, :presence => true

		has_one_attached :photo

		has_one_attached :office_photo
		
	extend FriendlyId
    friendly_id :fullname
end
