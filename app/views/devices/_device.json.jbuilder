json.extract! device, :id, :name, :manufacturer, :category, :created_at, :updated_at
json.url device_url(device, format: :json)
