json.array!(@conwisols) do |conwisol|
  json.extract! conwisol, :id, :name, :description, :image_url
  json.url conwisol_url(conwisol, format: :json)
end
