class SectionHeadline < ApplicationRecord
	##associations
  belongs_to :college
  has_one_attached :logo
end
