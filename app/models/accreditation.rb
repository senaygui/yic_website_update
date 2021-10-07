class Accreditation < ApplicationRecord
	##validations
		validates :accreditation_title, :presence => true 
		validates :modality, :presence => true
		validates :study_level, :presence => true
	##associations
  	belongs_to :program

  	has_many_attached :accreditation_documents
end
