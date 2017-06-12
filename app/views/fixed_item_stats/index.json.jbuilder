json.array!(@fixed_item_stats) do |fixed_item_stat|
  json.extract! fixed_item_stat, :id, :magic_item_name_id, :min, :max, :stat_type_id, :is_unique, :required_tier
  json.url fixed_item_stat_url(fixed_item_stat, format: :json)
end
