json.extract! appointment, :id, :type, :address, :latitute, :longitud, :start_time, :end_time, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
