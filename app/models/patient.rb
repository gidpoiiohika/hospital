class Patient < ApplicationRecord
  devise :registerable, :recoverable, :rememberable, :validatable, :database_authenticatable, authentication_keys: [:phone_number]

  has_many :recommendations
  has_many :appointments
  has_many :doctors, through: :appointments

  validates :phone_number, uniqueness: true

  def email_required?
   false
  end

  def email_changed?
   false
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
