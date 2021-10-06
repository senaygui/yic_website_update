class Admission < ApplicationRecord
		##validations
		validates :admission_name, :presence => true 
		validates :how_to_apply, :presence => true
		validates :required_document, :presence => true
		validates :payment_process, :presence => true 
		validates :study_level, :presence => true
		validates :modality, :presence => true
end
