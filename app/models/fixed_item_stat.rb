class FixedItemStat < ActiveRecord::Base
  belongs_to :magic_item_name
  belongs_to :stat_type
end
