class Category < ApplicationRecord
  has_many :doctors
  validates :name, presence: true, uniqueness: {scope: :name}
  has_one_attached :image
end
