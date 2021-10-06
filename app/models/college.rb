class College < ApplicationRecord
	##validations
    validates :college_name , :presence => true,:length => { :within => 2..100 }
    validates :mission, :presence => true
		validates :vision, :presence => true
		validates :overview, :presence => true
		validates :establishment_date, :presence => true
		validates :student_enrolled, :presence => true
		validates :distance_center, :presence => true
		validates :number_of_prorgam, :presence => true
		validates :mandate, :presence => true
		validates :history, :presence => true
		validates :headquarter_address, :presence => true
		validates :phone_number, :presence => true
		validates :alternative_phone_number, :presence => true
		validates :email, :presence => true
  ##associations
  has_one :section_headline, dependent: :destroy
end
