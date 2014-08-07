json.array!(@derrames) do |derrame|
  json.extract! derrame, :id, :title, :content
  json.url derrame_url(derrame, format: :json)
end
