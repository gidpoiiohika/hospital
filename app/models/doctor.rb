class Doctor < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
