json.array!(@item_rarities) do |item_rarity|
  json.extract! item_rarity, :id, :name
  json.url item_rarity_url(item_rarity, format: :json)
end
