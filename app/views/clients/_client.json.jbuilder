json.extract! client, :id, :last_name, :first_name, :second_name, :telephone, :passport_number, :created_at, :updated_at
json.url client_url(client, format: :json)