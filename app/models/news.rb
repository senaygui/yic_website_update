class News < ApplicationRecord
	##validations
		validates :news_title, :presence => true 
		validates :overview, :presence => true

		has_one_attached :photo

	extend FriendlyId
    friendly_id :news_title
end
