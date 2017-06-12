json.array!(@item_tiers) do |item_tier|
  json.extract! item_tier, :id, :name, :multiplier
  json.url item_tier_url(item_tier, format: :json)
end
