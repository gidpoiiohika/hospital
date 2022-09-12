FactoryBot.define do
  factory :doctor do
    sequence(:first_name) { |n| "Doctor-#{n}" }
    sequence(:last_name)  { |n| "Doctor-#{n}" }
    sequence(:phone_number) { |n| "+1555#{n.to_s.rjust(7, '0')}" }
    email { "doctodEmail@gmail.com" }
    password { 123456 }
    password_confirmation { 123456 }
    category { create(:category) }
  end
end
