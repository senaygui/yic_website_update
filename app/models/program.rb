class Program < ApplicationRecord
	##validations
    validates :program_name , :presence => true,:length => { :within => 2..50 }
    validates :study_level , :presence => true
    validates :modality , :presence => true
    validates :program_duration , :presence => true
	validates :credit_hour, :presence =>true
  ##scope
  	scope :recently_added, lambda { where('created_at >= ?', 1.week.ago)}
  	scope :undergraduate, lambda { where(study_level: "undergraduate")}
  	scope :graduate, lambda { where(study_level: "graduate")}
  	scope :online, lambda { where(modality: "online")}
  	scope :regular, lambda { where(modality: "regular")}
  	scope :extention, lambda { where(modality: "extention")}
  	scope :distance, lambda { where(modality: "distance")}
  ##associations
	has_many :accreditations
  has_many :career_opportunities
  accepts_nested_attributes_for :career_opportunities, :allow_destroy => true
  has_one_attached :photo

  extend FriendlyId
  friendly_id :program_name
end
