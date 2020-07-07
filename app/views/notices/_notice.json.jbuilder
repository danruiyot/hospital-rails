json.extract! notice, :id, :title, :message, :expiry, :start, :target, :created_at, :updated_at
json.url notice_url(notice, format: :json)
