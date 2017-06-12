json.array!(@magic_item_names) do |magic_item_name|
  json.extract! magic_item_name, :id, :name, :affix
  json.url magic_item_name_url(magic_item_name, format: :json)
end
