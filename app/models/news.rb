class News < ApplicationRecord
	##validations
		validates :news_title, :presence => true 
		validates :overview, :presence => true
end
