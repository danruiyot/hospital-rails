json.extract! admission, :id, :patient_id, :doctor_id, :ward_id, :date_released, :created_at, :updated_at
json.url admission_url(admission, format: :json)
