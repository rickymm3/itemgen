json.array!(@player_items) do |player_item|
  json.extract! player_item, :id, :full_name, :item_rarity_id, :user_id
  json.url player_item_url(player_item, format: :json)
end
