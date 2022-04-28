class Request < ApplicationRecord
    validates :name_of_organization, :presence => true
    validates :email, :presence => true
    validates :phone_number, :presence => true
    validates :student_fullname, :presence => true
    has_one_attached :tempo, :dependent => :destroy
    belongs_to :almuni, optional: true
end
