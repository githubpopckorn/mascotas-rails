json.extract! pet, :id, :name, :price, :tipo, :sexo, :observaciones, :estado, :created_at, :updated_at
json.url pet_url(pet, format: :json)
