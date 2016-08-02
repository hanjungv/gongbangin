json.array!(@fleas) do |flea|
  json.extract! flea, :id
  json.url flea_url(flea, format: :json)
end
