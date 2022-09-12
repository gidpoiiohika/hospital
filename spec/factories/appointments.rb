FactoryBot.define do
  factory :appointment do
    patient { create(:patient) }
    doctor { create(:doctor) }
    status { 1 }
  end
end
