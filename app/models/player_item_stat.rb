class PlayerItemStat < ActiveRecord::Base
  belongs_to :player_item
  belongs_to :stat_type
end
