class Appointment < ApplicationRecord
  enum status: %i[open closed], _default: "open"

  belongs_to :patient
  belongs_to :doctor

  validate :limit_create, on: :create

  scope :status_open, -> { where(status: 'open') }

  private

  def limit_create
    errors.add(:appointments, "Ліміт") if self.doctor.appointments.status_open.count >= 10
  end
end
