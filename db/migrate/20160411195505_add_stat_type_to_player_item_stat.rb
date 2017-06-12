class AddStatTypeToPlayerItemStat < ActiveRecord::Migration
  def change
    add_reference :player_item_stats, :stat_type, index: true, foreign_key: true
  end
end
