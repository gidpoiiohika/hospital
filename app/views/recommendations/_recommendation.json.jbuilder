json.extract! recommendation, :id, :doctor_id, :patient_id, :title, :created_at, :updated_at
json.url recommendation_url(recommendation, format: :json)
