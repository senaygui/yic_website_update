class Step < ApplicationRecord
  belongs_to :how_to
  has_one_attached :step_inamge
end
