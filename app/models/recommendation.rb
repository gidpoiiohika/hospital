class Recommendation < ApplicationRecord
  validates :title, presence: true
  belongs_to :patient
  belongs_to :doctor
end
