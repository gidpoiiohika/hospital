FactoryBot.define do
  factory :appointment do
    doctor_id { "" }
    patient_id { "" }
    status { 1 }
  end
end
