json.extract! vendedor, :id, :name, :mail, :amount, :created_at, :updated_at
json.url vendedor_url(vendedor, format: :json)
