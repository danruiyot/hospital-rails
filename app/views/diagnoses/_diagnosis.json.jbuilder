json.extract! diagnosis, :id, :title, :notes, :prescriptions, :patient_id, :add_by, :updated_by, :is_admited, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
