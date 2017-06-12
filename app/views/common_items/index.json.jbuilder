json.array!(@common_items) do |common_item|
  json.extract! common_item, :id, :name, :min, :max, :tier_id, :stat_type_id
  json.url common_item_url(common_item, format: :json)
end
