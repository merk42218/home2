json.extract! car, :id, :brand, :client_id, :model, :contents, :vin, :color, :contract_id, :created_at, :updated_at
json.url car_url(car, format: :json)