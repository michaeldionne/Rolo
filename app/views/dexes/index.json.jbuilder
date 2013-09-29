json.array!(@dexes) do |dex|
  json.extract! dex, :description
  json.url dex_url(dex, format: :json)
end
