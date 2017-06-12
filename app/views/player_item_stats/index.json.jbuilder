json.array!(@player_item_stats) do |player_item_stat|
  json.extract! player_item_stat, :id, :stat_type_id, :stat_value, :player_item_id
  json.url player_item_stat_url(player_item_stat, format: :json)
end
