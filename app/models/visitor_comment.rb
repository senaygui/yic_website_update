class VisitorComment < ApplicationRecord
	##validations
		validates :fullname, :presence => true 
		validates :category, :presence => true
		validates :subject, :presence => true
		validates :message, :presence => true
		has_one_attached :photo
end
