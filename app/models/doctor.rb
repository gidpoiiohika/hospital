class Doctor < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  belongs_to :category

  has_many :recommendations
  has_many :appointments
  has_many :patients, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end
end
