FactoryBot.define do
  factory :doctor do
    first_name { "DoctorFirstName" }
    last_name { "DoctorLastName" }
    phone_number { "787898" }
    email { "doctodEmail@gmail.com" }
    password { 123456 }
    password_confirmation { 123456 }
    category { create(:category) }
  end
end
