class HowTo < ApplicationRecord
    has_many :steps
    has_one_attached :image
end
