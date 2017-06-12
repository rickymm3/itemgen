class RemoveStatTypeFromPlayerItemStat < ActiveRecord::Migration
  def change
    remove_column :player_item_stats, :stat_type_id
  end
end
