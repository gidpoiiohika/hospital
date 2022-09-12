FactoryBot.define do
  factory :patient do
    first_name { "PatientFirstName" }
    last_name { "PatientLastName" }
    phone_number { "787898" }
    email { "PatientEmail@gmail.com" }
    password { 123456 }
    password_confirmation { 123456 }
  end
end
